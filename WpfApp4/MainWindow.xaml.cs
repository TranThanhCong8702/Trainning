using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using WpfApp4.Models;

namespace WpfApp4
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }
        QLBanHangContext db = new QLBanHangContext();
        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            HTDL();
            HTCBX();
        }
        private void HTDL()
        {
            var query = from sp in db.SanPhams
                        orderby sp.DonGia
                        select new
                        {
                            sp.MaSp,
                            sp.TenSp,
                            sp.MaLoai,
                            sp.SoLuong,
                            sp.DonGia,
                            ThanhTien = sp.SoLuong * sp.DonGia,
                        };
            dgvSP.ItemsSource = query.ToList();
        }
        private void HTCBX()
        {
            var query = from lsp in db.LoaiSanPhams
                        select lsp;
            cbxSp.ItemsSource= query.ToList();
            cbxSp.DisplayMemberPath = "TenLoai";
            cbxSp.SelectedValuePath = "MaLoai";
            cbxSp.SelectedIndex = 0;
        }

        private void btnThem_Click(object sender, RoutedEventArgs e)
        {
            var them = db.SanPhams.FirstOrDefault(t => t.MaSp.Equals(txtMaSp.Text));
            if (them == null)
            {
                SanPham sp = new SanPham();
                sp.MaSp=txtMaSp.Text;
                sp.TenSp=txtTenSp.Text;
                LoaiSanPham lsp = (LoaiSanPham)cbxSp.SelectedItem;
                sp.MaLoai=lsp.MaLoai;
                sp.DonGia=double.Parse(txtDonGia.Text);
                sp.SoLuong=int.Parse(txtSoLuong.Text);
                db.Add(sp);
                db.SaveChanges();
                MessageBox.Show("Them thanh cong");
                HTDL();
            }
            else
            {
                MessageBox.Show("Da ton tai san pham");
            }
        }

        private void dgvSP_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (dgvSP.SelectedItem != null)
            {
                var t = dgvSP.SelectedItem.GetType();
                PropertyInfo[] p= t.GetProperties();
                txtMaSp.Text = p[0].GetValue(dgvSP.SelectedItem).ToString();
                txtTenSp.Text = p[1].GetValue(dgvSP.SelectedItem).ToString();
                cbxSp.SelectedItem = p[2].GetValue(dgvSP.SelectedItem).ToString();
                txtSoLuong.Text = p[3].GetValue(dgvSP.SelectedItem).ToString();
                txtDonGia.Text = p[4].GetValue(dgvSP.SelectedItem).ToString();

            }
        }

        private void btnXoa_Click(object sender, RoutedEventArgs e)
        {
            LoaiSanPham lsp = (LoaiSanPham)cbxSp.SelectedItem;
            var tk = from sp in db.SanPhams
                     join l in db.LoaiSanPhams
                     on sp.MaLoai equals lsp.MaLoai
                     where l.TenLoai == lsp.TenLoai
                     select new
                     {
                         sp.MaSp,
                         sp.TenSp,
                         sp.MaLoai,
                         sp.SoLuong,
                         sp.DonGia,
                         ThanhTien = sp.SoLuong * sp.DonGia,
                     };
            dgvSP.ItemsSource = tk.ToList();
        }
    }
}
