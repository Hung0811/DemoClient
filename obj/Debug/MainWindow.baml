   M S B A M L   `   `   `  ����A  =Client, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:ClientClient  5   	       Client.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   &localclr-namespace:Client     5   	   V RMaterialDesignThemes.Wpf, Version=3.1.3.1513, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5	   
      MaterialDesignBody#���   5
   	   $��Regular"�5   	   $��13(�5   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   
      TextRenderingMode$
 Auto=�5   
     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � Title$ Client��5   	   $	��450��6   $	��800��6%   .��5      �  � RowDefinitions 5   
   �� 5      $��9* �6   6*   �� 5      6   .+�5   
   � $��0��6   .+�5      � $��10q�6   .+�5      �� $��1q�6   
���   �._�5      �� -   5         ��Name$ 
lvMessages��5      $��10q�63   
���   �6�   5      5      5      � 5   
   $��1��6    � ColumnDefinitions 5       �� 5!      $��4* �6#   60   �� 5"      6%   .+�5$      � $��0��6   .+�5%      � $��15 0 5 5q�6   .+�5&      �� $��1q�6   
���   �._�5'      �� -   5         ��Name$ 	tbMessage��5'   "    �� TextWrapping$
 Wrap=�65   6K   5(      5)      5*      � 5+      $��1��6   .+�5,      �� -   5         ��Name$ btnSend��5,        MaterialDesignRaisedButton#��[ 5-      $	��100��6I   	 � ToolTip$/	 )Resource name: MaterialDesignRaisedButton��6U   $��29,0,29.4,5.4q�6�   $��32��6�   $��Bottom=�6�   .��6�   SEND5.      5/      51      52      53      