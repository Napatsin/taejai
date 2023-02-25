import 'package:flutter/material.dart';
import 'package:taejai/models/project.dart';
import 'package:intl/intl.dart';
import 'package:taejai/pages/project/project_details_page.dart';

class ProjectListPage extends StatefulWidget {
  const ProjectListPage({Key? key}) : super(key: key);

  @override
  State<ProjectListPage> createState() => _ProjectListPageState();
}

class _ProjectListPageState extends State<ProjectListPage> {
  List<Project> projects = [
    Project(
      title: 'อิ่มท้องน้องพิเศษ',
      description:
      'ชวนมอบมื้ออาหารกลางวันให้เด็กพิเศษ 240 คนในมูลนิธิบ้านครูบุญชูเพื่อเด็กพิเศษ',
      targetAmount: 119350,
      duration: 22,
      receiveAmount: 10000,
      donateCount: 13,
      imageURL: 'assets/images/project01.jpg',
      detail: 'ชวนมอบมื้ออาหารกลางวันให้เด็กพิเศษ 240 คนในมูลนิธิบ้านครูบุญชูเพื่อเด็กพิเศษ '
          'ที่ต้องเผชิญค่าใช้จ่ายด้านอาหารกลางวันหลักแสนต่อเดือน เงินจำนวน 3,500 บาท'
          'สามารถเลี้ยงอาหารทุกคนได้ 1 มื้อ',
      time: '06 ก.พ. 2566 ถึง 06 มี.ค. 2566',
      place: 'ตำบลพลูตาหลวง อำเภอสัตหีบ จังหวัดชลบุรี (มูลนิธิบ้านครูบุญชูเพื่อเด็กพิเศษ)',
    ),
    Project(
      title: 'I’m ABLE “โอกาสจากพี่ ช่วยหนูได้เรียนร่วม”',
      description:
      'ระดมทุนการศึกษา 1 ปีให้กับเด็กนักเรียนพิการจำนวน 150 คนๆ ละ 4,000 บาท',
      targetAmount: 825000,
      duration: 138,
      receiveAmount: 400000,
      donateCount: 8,
      imageURL: 'assets/images/project02.jpg',
      detail: 'ระดมทุนการศึกษา 1 ปีให้กับเด็กนักเรียนพิการจำนวน 150 คนๆ ละ 4,000 บาท '
          'ให้กับเด็กนักเรียนพิการที่กำลังศึกษาอยู่ในระดับชั้นประถมศึกษาถึงมัธยมศึกษาในจังหวัดต่างๆของ'
          'ภาคตะวันออกเฉียงเหนือ ภาคตะวันตกและภาคใต้ที่มีความพิการทางร่างกายหรือพัฒนาการช้าแต่สามารถส'
          'ื่อสารและเรียนหนังสือได้ เพื่อส่งเสริมเด็กนักเรียนพิการเหล่านั้นได้เรียนร่วมในโรงเรียนปกติกับนักเรียนทั่วไป '
          'เสริมสร้างพัฒนาการทางร่างกาย สติปัญญา ส่งเสริมการเรียนรู้การเข้าสังคมและช่วยเหลือตนเองในสถานการณ์'
          'ต่างๆโดยไม่รู้สึกว่าตนเองเป็นภาระของครูและเพื่อนๆในโรงเรียน',
      time: '01 ก.พ. 2566 ถึง 30 มิ.ย. 2566',
      place: 'ภาคตะวันออกเฉียงเหนือ ภาคตะวันตกและภาคใต้ของประเทศไทย',
    ),
    Project(
      title: 'ทุนการศึกษาเพื่อนักเรียนชาวเขา',
      description:
      'ร่วมส่งเสริมการศึกษาและพัฒนานักเรียนชาวเขาและนักเรียนด้อยโอกาส',
      targetAmount: 891234,
      duration: 456,
      receiveAmount: 34875,
      donateCount: 30,
      imageURL: 'assets/images/project03.png',
      detail: 'ร่วมส่งเสริมการศึกษาและพัฒนานักเรียนชาวเขาและนักเรียนด้อยโอกาส',
      time: 'ระยะเวลาโครงการ 01 ก.พ. 2566 ถึง 30 พ.ย. 2566',
      place: 'พื้นที่ดำเนินโครงการ ระบุพื้นที่: ตำบลห้วยแก้ว อำเภอแม่ออน จังหวัดเชียงใหม่ , ตำบลหนองหาร อำเภอสันทราย จังหวัดเชียงใหม่ , ตำบลดอนแก้ว อำเภอแม่ริม จังหวัดเชียงใหม่ , ตำบลในเมือง อำเภอเมืองพิษณุโลก จังหวัดพิษณุโลก , ตำบลบ้านต๋อม อำเภอเมืองพะเยา จังหวัดพะเยา , ตำบลช้างเผือก อำเภอเมืองเชียงใหม่ จังหวัดเชียงใหม่ , ตำบลปางหมู อำเภอเมืองแม่ฮ่องสอน จังหวัดแม่ฮ่องสอน , ตำบลชมพู อำเภอเมืองลำปาง จังหวัดลำปาง',),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('เทใจ')),
      body: ListView.builder(
        itemCount: projects.length,
        // Callback function
        itemBuilder: (BuildContext context, int index) {
          var project = projects[index];

          var descriptionStyle = const TextStyle(
            fontSize: 12.0,
            color: Colors.black54,
          );
          var amountStyle = const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          );

          var formatter = NumberFormat('#,###,000');
          var target = formatter.format(project.targetAmount);
          var percentText =
          ((project.receiveAmount / project.targetAmount) * 100)
              .toStringAsFixed(0);
          var percent = int.tryParse(percentText);

          return Card(
            child: InkWell(
              onTap: () {
                _handleClickProjectItem(projects[index]);
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          project.imageURL,
                          width: 60.0,
                          height: 60.0,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 10.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(project.title),
                            const SizedBox(height: 8.0),
                            Text(project.description, style: descriptionStyle),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('เป้าหมาย', style: descriptionStyle),
                            Text('$target บาท', style: amountStyle),
                          ],
                        ),
                        Text('$percentText%', style: descriptionStyle),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: percent!,
                          child: Container(
                            height: 10.0,
                            margin: const EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 0.0),
                            color: Colors.green,
                          ),
                        ),
                        Expanded(
                          flex: 100 - percent,
                          child: Container(
                            height: 10.0,
                            margin: const EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 0.0),
                            color: const Color(0xFFE8E8E8), //Colors.grey[200],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('${project.duration} วัน', style: descriptionStyle),
                        Row(
                          children: [
                            const Icon(Icons.person, size: 14.0),
                            Text('${project.donateCount}',
                                style: descriptionStyle),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _handleClickProjectItem(Project p) {
    print(p.targetAmount.toString());

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProjectDetailsPage(project: p)),
    );
  }
}
