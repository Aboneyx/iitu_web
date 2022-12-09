import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FooterWidget extends StatefulWidget {
  const FooterWidget({super.key});

  @override
  State<FooterWidget> createState() => _FooterWidgetState();
}

class _FooterWidgetState extends State<FooterWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      color: const Color(0xff2C2A2B),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'IITU clubs',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Color(0xFFFFFFFF),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Info',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'HomePage',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Clubs',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Contacts',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  const SizedBox(width: 10),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Contacts',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.phone,
                        color: Color(0xFFFFFFFF),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '+7 (775) 529 68 50 ',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: const [
                      Icon(
                        Icons.mail,
                        color: Color(0xFFFFFFFF),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'coordinator@email.com',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: const [
                      Icon(
                        Icons.location_city,
                        color: Color(0xFFFFFFFF),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '100000, Kazakhstan,',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/facebook.svg'),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/twitter.svg'),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/instagram.svg'),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/pinterest.svg'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
