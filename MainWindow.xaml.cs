using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Sockets;
using System.Runtime.Serialization.Formatters.Binary;
using System.Text;
using System.Threading;
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

namespace Client
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        IPEndPoint IP;
        Socket client;
        public MainWindow()
        {
            InitializeComponent();
            Connect();
        }

        public void Connect()
        {
           IP = new IPEndPoint(IPAddress.Parse("127.0.0.1"), 9090);
            client = new Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.IP);
            try
            {
                client.Connect(IP);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
            

            Thread thread = new Thread(Receive);
            thread.IsBackground = true;
            thread.Start();

        }

        //public void Close()
        //{
        //    client.Close();
        //}

        public void Send()
        {
            if (tbMessage.Text != string.Empty)
            {
                client.Send(Serialize(tbMessage.Text));
                AddMessage(tbMessage.Text);
            }
        }

        public void AddMessage(string msg)
        {
            //lvMessages.Items.Add(new ListViewItem() { Text = msg });
            this.Dispatcher.Invoke(() => { lvMessages.Items.Add(msg); tbMessage.Clear(); });
            
        }

        public void Receive()
        {
            try
            {
                while (true)
                {
                    byte[] data = new byte[1024 * 5000];
                    client.Receive(data);

                    string msg = (string)DeSerialize(data);
                    AddMessage(msg);
                }
            }
            catch( Exception ex)
            {
                MessageBox.Show("Error: " + ex);
            }


        }

        public byte[] Serialize(object obj)
        {
            MemoryStream stream = new MemoryStream();
            BinaryFormatter format = new BinaryFormatter();

            format.Serialize(stream, obj);
            return stream.ToArray();
        }

        public object DeSerialize(byte[] data)
        {
            MemoryStream stream = new MemoryStream(data);
            BinaryFormatter format = new BinaryFormatter();

            return format.Deserialize(stream);
            
        }

        private void BtnSend_Click(object sender, RoutedEventArgs e)
        {
            Send();
        }

        private void ListView_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
    }
}
