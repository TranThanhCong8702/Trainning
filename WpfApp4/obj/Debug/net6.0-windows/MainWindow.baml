   M S B A M L   `   `   `  ����B  >WpfApp4, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp4WpfApp4  5   	       WpfApp4.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp4     5   	   -   5          � Title$  Cap nhat bang san pham��5   	   $	��450��6(   $	��800��65   .��5	      � .+�5
   
   �� $��Ma san pham��6   $
��Left=�6&   $��	35,34,0,0q�6A   $	��Top=�6T   �� 5   
   $��Ten san pham��6   $
��Left=�6'   $��	35,64,0,0q�6B   $	��Top=�6U   �� 5   
   $��Ma loai��6   $
��Left=�6"   $��	35,94,0,0q�6=   $	��Top=�6P   �� 5   
   $��Don gia��6   $
��Left=�6"   $��
35,124,0,0q�6=   $	��Top=�6Q   �� 5   
   $��So luong��6   $
��Left=�6#   $��
35,154,0,0q�6>   $	��Top=�6R   �� 5   
   -   5         ��Name$ txtMaSp��5      $
��Left=�6#   $��
139,38,0,0q�6>    �� TextWrapping$
 Wrap=�6R   $�� ��6f   $	��Top=�6n   $	��120��6�   �� 5   
   -   5        $ txtTenSp��5      $
��Left=�6$   $��
139,68,0,0q�6?   $
 Wrap=�6S   $�� ��6g   $	��Top=�6o   $	��120��6�   �� 5   
   -   5        $ 	txtDonGia��5      $
��Left=�6%   $��139,128,0,0q�6@   $
 Wrap=�6U   $�� ��6i   $	��Top=�6q   $	��120��6�   �� 5   
   -   5        $ 
txtSoLuong��5      $
��Left=�6&   $��139,158,0,0q�6A   $
 Wrap=�6V   $�� ��6j   $	��Top=�6r   $	��120��6�   �� 5   
   -   5         ��Name$ cbxSp��5      $
��Left=�6"   $��
139,98,0,0q�6=   $	��Top=�6Q   $	��120��6i   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ dgvSP��5      $��0,185,0,125q�6M      AutoGenerateColumns$ False��6b      Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$
 MaSp��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 63   �� *MaSp+  5      $ TenSp��6%    64   �� *TenSp+  5      $ MaLoai��6%    65   �� *MaLoai+  5      $ SoLuong��6%    66   �� *	SoLuong+  5      $ DonGia��6%    65   �� *DonGia+  5      $ 	ThanhTien��6%   	   Width5  /System.Windows.Controls.DataGridLengthConverter$	 * 6V    68   �� *	ThanhTien+6V   5      �� 5   
   -   5        
 ��Name$
 btnThem��5      $
��Them��6"   $
��Left=�61   $��278,347,0,0q�6L   $	��Top=�6a   6y   �� 5   
   -	   5        $
 btnSua��5      $	��Sua��6!   $
��Left=�6/   $��360,347,0,0q�6J   $	��Top=�6_   �� 5    
   -
   5        $
 btnXoa��5       $��Tim Kiem��6!   $
��Left=�64   $��513,347,0,0q�6O   $	��Top=�6d   6|   �� 5!   
   -   5        $
 btnTK��5!      $	��Xoa��6    $
��Left=�6.   $��436,347,0,0q�6I   $	��Top=�6^   5#      5$      