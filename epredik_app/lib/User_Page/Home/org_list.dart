
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nb_utils/nb_utils.dart';

class OrgList extends StatelessWidget {
  const OrgList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Padding(
          padding: const EdgeInsets.only(left: 18, right: 18),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              Image(image: NetworkImage('https://scontent.fpag2-1.fna.fbcdn.net/v/t39.30808-6/453490027_990527303083804_7431113007285988877_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=f727a1&_nc_eui2=AeGg4DxTqB4io3qCLOwAz_BGUeiqLPF2qhhR6Kos8XaqGN6gD-o1uv6iRd3spGGm2YqGV94jQIIG1chNHQKfq2eS&_nc_ohc=bw69Ww_LnPYQ7kNvgEKNM6-&_nc_ht=scontent.fpag2-1.fna&oh=00_AYBa44Esb9Xb-5wo9ZaQ3HsmM6bQpmnNrA3n5yPJsvQ5Lw&oe=66DE6F1C'),),
              SizedBox(width: 10),
              Image(image: NetworkImage('https://scontent.fpag2-1.fna.fbcdn.net/v/t39.30808-6/453648058_990527686417099_157509613848834672_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=f727a1&_nc_eui2=AeEGIi407X0UnZ4YsQdNVBjXfYVdn1BFQS19hV2fUEVBLRMvRMHi0leLZKsmxq1GZcy7Bco7URgiBs_NY8XHQJtk&_nc_ohc=uYPrLc-jvKEQ7kNvgGA5PRV&_nc_ht=scontent.fpag2-1.fna&oh=00_AYAw_vdVeG0b92iY4BSk_jRseKtrkOxwdik4V7ekfeA3mg&oe=66DE3E4D'),),
              SizedBox(width: 10),
              Image(image: NetworkImage('https://scontent.fpag2-1.fna.fbcdn.net/v/t39.30808-6/453731043_990527496417118_4600225080347635282_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=f727a1&_nc_eui2=AeGBWbIu53rZ3s_-FILBoN_OgFsc3HDOBcWAWxzccM4FxYcEZsuP9GD8rS5jIk2Ju2sx9bvqXtHOEb_JJjhTfg04&_nc_ohc=j-qkHy9muVEQ7kNvgGf57NX&_nc_ht=scontent.fpag2-1.fna&oh=00_AYCb6U6O8HKyrTcwz1Xbf-Q4TJQfUZL_HWK4qmo15bxsfA&oe=66DE6308'),),
              SizedBox(width: 10),
              Image(image: NetworkImage('https://scontent.fpag2-1.fna.fbcdn.net/v/t39.30808-6/453747709_990527599750441_4437161448466331203_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=f727a1&_nc_eui2=AeF46XgLOJEzW5deI_NcIKjXPLOBpHIGeSU8s4GkcgZ5JV6mzaCibIImbjpWydZCkY9vlc33thIFmRctZAdtJLOs&_nc_ohc=4DSLa8M-gysQ7kNvgGqAuF5&_nc_ht=scontent.fpag2-1.fna&_nc_gid=AL0XpOdwvGeiEvc-f0SdcJ4&oh=00_AYDWCD9vMCBvyIaxSPDL7N9ZKXZKB_vGLj_gz6bS2BeNdQ&oe=66DE59E3'),),
              SizedBox(width: 10),
              Image(image: NetworkImage('https://scontent.fpag2-1.fna.fbcdn.net/v/t39.30808-6/453448666_990527776417090_3218370620055930548_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=f727a1&_nc_eui2=AeF3S_pdHuhGB8GXru9IP03wMlnbS8WrLBgyWdtLxassGLJfOFKLMbd9hVuIUvzv1NsqgJEKGslFnjlMXk1sahxx&_nc_ohc=r_Dt6uY614IQ7kNvgEUNOpB&_nc_ht=scontent.fpag2-1.fna&oh=00_AYDYyL_lhpmrfCYDHoLIBURba41s_OOhA74RnQ508Q8WjQ&oe=66DE5ED0'),),
              SizedBox(width: 10),
              Image(image: NetworkImage('https://scontent.fpag2-1.fna.fbcdn.net/v/t39.30808-6/453397651_990527899750411_2765146122542022634_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=f727a1&_nc_eui2=AeFst23yAjXFOO0wpFLeFJaCGK-Z-j3bIhoYr5n6PdsiGqRGr0tp8B0Y1eda3sYO31oOxC-ER-ehd26YTdetsYkq&_nc_ohc=7WMPnLh8GZsQ7kNvgFgTyzd&_nc_ht=scontent.fpag2-1.fna&_nc_gid=Au1zguzUKfTlGscyShm2McI&oh=00_AYCP6scrOZZvE9ESiDMTZzEyjKmJ637CjtwpJ1ZhyPwkSg&oe=66DE6A40'),),
              SizedBox(width: 10),
              Image(image: NetworkImage('https://scontent.fpag2-1.fna.fbcdn.net/v/t39.30808-6/453431654_990528046417063_8787173528897734566_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=f727a1&_nc_eui2=AeGcPGY6Jt8KZEzOKflk0aL3RkoA2g0qPANGSgDaDSo8A0dq-cmgix78DNQARO-6YtL7ZY7CwURC_ztOOGdWHZNl&_nc_ohc=o6aQ6W4WsHUQ7kNvgERASDj&_nc_ht=scontent.fpag2-1.fna&oh=00_AYCvfcDaFao25_oeqkZUCT_wZSIVuAn9h9H4aqEArYcyHg&oe=66DE4481'),),
              SizedBox(width: 10),
              Image(image: NetworkImage('https://scontent.fpag2-1.fna.fbcdn.net/v/t39.30808-6/453607937_990528209750380_7933630989160131427_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=f727a1&_nc_eui2=AeFn6CDjW0Qg6VqrVEGe5J1JBdTjA4d4CUcF1OMDh3gJRzaN_k7fZx_ToNO3yQVkUzXd6leRhceAwCqtIshTcMVp&_nc_ohc=BSsbwXZwIZwQ7kNvgGPULX6&_nc_ht=scontent.fpag2-1.fna&_nc_gid=AlihtQBLoY0UD8by4K3HCQx&oh=00_AYBfmUhbFWF6ITVUI_225xWq3MuZuAIRTnTxSDbUKB2YNQ&oe=66DE6018'),),
              SizedBox(width: 10),
              Image(image: NetworkImage('https://scontent.fpag2-1.fna.fbcdn.net/v/t39.30808-6/453530785_990528409750360_68159460147151773_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=f727a1&_nc_eui2=AeHy1XavWYZV1t03cC-1E00FvofnRP5LCB--h-dE_ksIH_USVeh4_Rlgrzml7Ok70r21lq3ub45gdp6XreR4fKqB&_nc_ohc=-Ng8N56tNZ4Q7kNvgFCDE5b&_nc_ht=scontent.fpag2-1.fna&oh=00_AYDsizuHOx3Ey4HMo6kCUHnshtKYEF5GB2hrZM_VXFkc9g&oe=66DE793B'),),
              SizedBox(width: 10),
              Image(image: NetworkImage('https://scontent.fpag2-1.fna.fbcdn.net/v/t39.30808-6/453746782_990528536417014_4774896994092034349_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=f727a1&_nc_eui2=AeEY4Zv3fbxD2MwC6SUNIieuQJ3oiXY7VYRAneiJdjtVhERi3VijK2oNdxT1HHNgPgzF2X7KYukZZrjOIJJ3gUyc&_nc_ohc=gRntxxlhmCcQ7kNvgExzqUU&_nc_ht=scontent.fpag2-1.fna&oh=00_AYBCijsK6AjwNAi1kbLgWENifg8ViAcSsUUBiWy6SMCJIw&oe=66DE521C'),),
              SizedBox(width: 10),
              Image(image: NetworkImage('https://scontent.fpag2-1.fna.fbcdn.net/v/t39.30808-6/453490336_990528639750337_1493830576092165382_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=f727a1&_nc_eui2=AeFr6N33M0XoC356BLlUOaRPJGy0oO4Y9wUkbLSg7hj3BVPX4qLXEqp3U5og8Mbj7aDdYxHhetDfs68-Y8dtXjDR&_nc_ohc=zsfmeBCkajMQ7kNvgH7bMEU&_nc_ht=scontent.fpag2-1.fna&oh=00_AYD2XS95evRy9BV6fzTYA76d8jpB3oc6dG9_N8pkdV598A&oe=66DE4F1E'),),
              SizedBox(width: 10),
              Image(image: NetworkImage('https://scontent.fpag2-1.fna.fbcdn.net/v/t39.30808-6/453537644_990528743083660_3884823585598030329_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=f727a1&_nc_eui2=AeHdQrkIFFaCkH_CDLOO_Ox0E6C1jsjUTOoToLWOyNRM6jvwJOUQpoT7b0uKWGnFrAAL2D9TaB6lvZne4q-EpFP_&_nc_ohc=vGjLtDnGPWMQ7kNvgH36sGh&_nc_ht=scontent.fpag2-1.fna&oh=00_AYBo0oo0F22V1uAb87owHPXTJymy7Qagrmhj1KKCeqKdDQ&oe=66DE4458'),),
              SizedBox(width: 10),
              Image(image: NetworkImage('https://scontent.fpag2-1.fna.fbcdn.net/v/t39.30808-6/453747759_990529146416953_7991171659768912716_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=f727a1&_nc_eui2=AeGamcviqvU1jNZxlBgELiCPE2fvlJsy_sYTZ--UmzL-xgEYoTJ7fM2XTycJAOPluyLtlDWsku3GQigFOvCeJHm8&_nc_ohc=pWKB8emlzKoQ7kNvgGdLAqu&_nc_ht=scontent.fpag2-1.fna&oh=00_AYCxxGyyI1hppZLG2z7bgg3WxxZygOpHPC3X5a_n160Yvw&oe=66DE68F6'),),
              SizedBox(width: 10),
              Image(image: NetworkImage('https://scontent.fpag2-1.fna.fbcdn.net/v/t39.30808-6/453482353_990528886416979_6067721527735991573_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=f727a1&_nc_eui2=AeG5ZALzp5h9SEM8qP1TXjlenX2TiJqyWhidfZOImrJaGDlQiQeJBf8XpNIL-GPDn_KQoOJd9Ih8BACV-AwXgCXu&_nc_ohc=L1BAIEQaF0oQ7kNvgE772IC&_nc_ht=scontent.fpag2-1.fna&_nc_gid=Ayp0IzhsF46i4uqBJZye2L9&oh=00_AYC-Tl1ftwGc-ahzvKUgs4YvX6GkiEEUJokYbopdEHItgQ&oe=66DE581B'),),
              SizedBox(width: 10),
              Image(image: NetworkImage('https://scontent.fpag2-1.fna.fbcdn.net/v/t39.30808-6/453731077_990529249750276_2233373217311005782_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=f727a1&_nc_eui2=AeGL7b7Be9SMR6Wzncrx5rV4mP6_XZ9Wvh2Y_r9dn1a-HS2uKQwH9DX68lHTFtmzLYzOTDMO2jB8cers3t3gC9lo&_nc_ohc=_3iodYG0wGQQ7kNvgGD5BLN&_nc_ht=scontent.fpag2-1.fna&oh=00_AYBNegvQ2bWVs6XGWi8GYBRpHP6bAOQViy-Z6N58JqAFQg&oe=66DE41FE'),),
              SizedBox(width: 10),
              Image(image: NetworkImage('https://scontent.fpag2-1.fna.fbcdn.net/v/t39.30808-6/453648723_990529479750253_4502307560051868622_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=f727a1&_nc_eui2=AeGylkHvssuQ4_on0N1uRmUW6cDJEE-b-4XpwMkQT5v7hVSi2QVU3m_lhosyyYiktT3Wo7UEK1KaV_nzDuwTYv-5&_nc_ohc=NqDVvaqxA0kQ7kNvgEgAF5O&_nc_ht=scontent.fpag2-1.fna&oh=00_AYB0FsKnLPSatWfAHEa_X3Z6kFHel7EkrlYm93_CRxqiIQ&oe=66DE6688'),),
              SizedBox(width: 10),
              Image(image: NetworkImage('https://scontent.fpag2-1.fna.fbcdn.net/v/t39.30808-6/453533026_990529673083567_3819345883724592370_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=f727a1&_nc_eui2=AeHGDKZYJPNy_8lX2ws_AZZ1m12nQq5ckNGbXadCrlyQ0QNV_MLsnEeH5Iu8XU79hlCePSUQsmFCiACz0vcumdVr&_nc_ohc=lyAMfIqxOw4Q7kNvgEJrl7W&_nc_ht=scontent.fpag2-1.fna&_nc_gid=AKzSdFrE9XEJlr_4_ADl1Ac&oh=00_AYDANbZe9k9R4AJQVjS65uxcKKujwZhZdlhKyBfCZtmMNA&oe=66DE4011'),),
            ],
          ),
        ),

    );
  }
}