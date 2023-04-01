#include "ros/ros.h" // Header Untuk Ros Node (Wajib)
#include "std_msgs/String.h" // Untuk memanggil jenis message yang sudah disediakan ros lebih lengkap ada di http://wiki.ros.org/msg

#include <sstream>

/**
 * Contoh ini untuk memberikan gambaran node publisher
 */
int main(int argc, char **argv) //int main wajib untuk menjalankan program
{
  /**
   * Ros init untuk memberi tahu bahwa program ini adalah node dengan nama
   * yang telah ditentukan yaitu "talker"
   */
  ros::init(argc, argv, "talker");

  /**
   * NodeHandle wajib untuk menjalankan ros, nanti kelas dari nodehandle ini
   * dipanggil untuk menjalankan publisher subscriber dan hal-hal yang
   * ada di ros
   */
  ros::NodeHandle n;

  /**
   * Fungsi publisher untuk mengirim data dari node ini ke node lain yang membutuhkan
   * syntax nya seperti berikut dengan:
   * std_msgs::String -> nama msgs
   * chatter -> nama topik
   * 1000 -> queue / urutan. artinya akan ada 1000 antrian
   */
  ros::Publisher chatter_pub = n.advertise<std_msgs::String>("chatter", 1000);

  ros::Rate loop_rate(10); //rate untuk loop ros satuannya adalah Hz, kalau 10 Hz berarti mengirim setiap 1/10 detik

  /**
   * Tujuan dari node ini yaitu mengirimkan perhitungan count dari 0 dan akan di iterasi
   */
  int count = 0;
  while (ros::ok()) // ros::ok() untuk memberikan petunjuk bahwa perulangan while ini akan berhenti apabila dipencet ctrl+c atau diinterupsi dengan mematikan roscore
  {
    /**
     * membuat nama variabel dengan nama msg
     */
    std_msgs::String msg;

    std::stringstream ss;
    ss << "hello world " << count;
    msg.data = ss.str();

    ROS_INFO("%s", msg.data.c_str());

    /**
     * Kemudian akan dikirimkan dengan menggunakan kelas chatter_pub. didalam kelas tersebut terdapat fungsi publish
     * data yang dikirim yaitu msg. msg adalah variabel yang telah kita buat sebelumnya diatas
     */
    chatter_pub.publish(msg);

    ros::spinOnce(); // akan mengulang terus dengan menggunakan spinOnce dengan kecepatan sesuai rate, dalam kasus ini kecepatannya 10 Hz atau 1/10 detik

    loop_rate.sleep(); // rate sleep
    ++count; // iterasi variabel count
  }


  return 0;
}