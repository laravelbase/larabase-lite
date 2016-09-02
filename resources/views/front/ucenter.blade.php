@extends('front.layouts.app')

@section('custom_css')
    <style>
        .demo-card-image.mdl-card {
            width: 200px;
            height: 200px;
            background: url({{$auth_user->avatar}}) center / cover;
            margin:0  auto 30px;

        }
        .demo-card-image > .mdl-card__actions {
            height: 42px;
            padding: 10px;
            background: rgba(0, 0, 0, 0.2);
        }
        .demo-card-image__filename {
            color: #fff;
            font-size: 14px;
            font-weight: 500;
        }

        * {
            box-sizing: border-box;
        }

        ul.tile {
            margin: 0;
            padding: 0;
            list-style-type: none;
            width: 100%;
            margin: 0 auto;
            padding: 15px;
            text-align: center;
            overflow-x: hidden;
        }

        .card {
            float: left;
            position: relative;
            width: calc(100% * .3333 - 30px + .3333 * 30px);
            height: 290px;
            margin: 0 30px 30px 0;
            -webkit-perspective: 1000;
            perspective: 1000;
            overflow: hidden;
        }
        .card:first-child .card__front {
            background: #5271C2;
        }
        .card:first-child .card__num {
            text-shadow:  1px 1px rgba(52, 78, 147, 0.8) , 2px 2px rgba(52, 79, 148, 0.802) , 3px 3px rgba(53, 79, 148, 0.804) , 4px 4px rgba(53, 80, 149, 0.806) , 5px 5px rgba(54, 80, 150, 0.808) , 6px 6px rgba(54, 81, 150, 0.81) , 7px 7px rgba(55, 81, 151, 0.812) , 8px 8px rgba(55, 82, 152, 0.814) , 9px 9px rgba(55, 82, 152, 0.816) , 10px 10px rgba(56, 83, 153, 0.818) , 11px 11px rgba(56, 83, 154, 0.82) , 12px 12px rgba(57, 83, 154, 0.822) , 13px 13px rgba(57, 84, 155, 0.824) , 14px 14px rgba(57, 84, 156, 0.826) , 15px 15px rgba(58, 85, 156, 0.828) , 16px 16px rgba(58, 85, 157, 0.83) , 17px 17px rgba(59, 86, 157, 0.832) , 18px 18px rgba(59, 86, 158, 0.834) , 19px 19px rgba(59, 87, 159, 0.836) , 20px 20px rgba(60, 87, 159, 0.838) , 21px 21px rgba(60, 88, 160, 0.84) , 22px 22px rgba(61, 88, 160, 0.842) , 23px 23px rgba(61, 88, 161, 0.844) , 24px 24px rgba(61, 89, 162, 0.846) , 25px 25px rgba(62, 89, 162, 0.848) , 26px 26px rgba(62, 90, 163, 0.85) , 27px 27px rgba(62, 90, 163, 0.852) , 28px 28px rgba(63, 90, 164, 0.854) , 29px 29px rgba(63, 91, 164, 0.856) , 30px 30px rgba(63, 91, 165, 0.858) , 31px 31px rgba(64, 92, 165, 0.86) , 32px 32px rgba(64, 92, 166, 0.862) , 33px 33px rgba(64, 92, 166, 0.864) , 34px 34px rgba(65, 93, 167, 0.866) , 35px 35px rgba(65, 93, 167, 0.868) , 36px 36px rgba(65, 94, 168, 0.87) , 37px 37px rgba(66, 94, 169, 0.872) , 38px 38px rgba(66, 94, 169, 0.874) , 39px 39px rgba(66, 95, 170, 0.876) , 40px 40px rgba(67, 95, 170, 0.878) , 41px 41px rgba(67, 96, 171, 0.88) , 42px 42px rgba(67, 96, 171, 0.882) , 43px 43px rgba(68, 96, 171, 0.884) , 44px 44px rgba(68, 97, 172, 0.886) , 45px 45px rgba(68, 97, 172, 0.888) , 46px 46px rgba(69, 97, 173, 0.89) , 47px 47px rgba(69, 98, 173, 0.892) , 48px 48px rgba(69, 98, 174, 0.894) , 49px 49px rgba(69, 98, 174, 0.896) , 50px 50px rgba(70, 99, 175, 0.898) , 51px 51px rgba(70, 99, 175, 0.9) , 52px 52px rgba(70, 99, 176, 0.902) , 53px 53px rgba(71, 100, 176, 0.904) , 54px 54px rgba(71, 100, 177, 0.906) , 55px 55px rgba(71, 100, 177, 0.908) , 56px 56px rgba(71, 101, 177, 0.91) , 57px 57px rgba(72, 101, 178, 0.912) , 58px 58px rgba(72, 101, 178, 0.914) , 59px 59px rgba(72, 102, 179, 0.916) , 60px 60px rgba(73, 102, 179, 0.918) , 61px 61px rgba(73, 102, 180, 0.92) , 62px 62px rgba(73, 103, 180, 0.922) , 63px 63px rgba(73, 103, 180, 0.924) , 64px 64px rgba(74, 103, 181, 0.926) , 65px 65px rgba(74, 103, 181, 0.928) , 66px 66px rgba(74, 104, 182, 0.93) , 67px 67px rgba(74, 104, 182, 0.932) , 68px 68px rgba(75, 104, 182, 0.934) , 69px 69px rgba(75, 105, 183, 0.936) , 70px 70px rgba(75, 105, 183, 0.938) , 71px 71px rgba(75, 105, 184, 0.94) , 72px 72px rgba(76, 106, 184, 0.942) , 73px 73px rgba(76, 106, 184, 0.944) , 74px 74px rgba(76, 106, 185, 0.946) , 75px 75px rgba(76, 106, 185, 0.948) , 76px 76px rgba(77, 107, 185, 0.95) , 77px 77px rgba(77, 107, 186, 0.952) , 78px 78px rgba(77, 107, 186, 0.954) , 79px 79px rgba(77, 107, 187, 0.956) , 80px 80px rgba(77, 108, 187, 0.958) , 81px 81px rgba(78, 108, 187, 0.96) , 82px 82px rgba(78, 108, 188, 0.962) , 83px 83px rgba(78, 109, 188, 0.964) , 84px 84px rgba(78, 109, 188, 0.966) , 85px 85px rgba(79, 109, 189, 0.968) , 86px 86px rgba(79, 109, 189, 0.97) , 87px 87px rgba(79, 110, 189, 0.972) , 88px 88px rgba(79, 110, 190, 0.974) , 89px 89px rgba(80, 110, 190, 0.976) , 90px 90px rgba(80, 110, 190, 0.978) , 91px 91px rgba(80, 111, 191, 0.98) , 92px 92px rgba(80, 111, 191, 0.982) , 93px 93px rgba(80, 111, 191, 0.984) , 94px 94px rgba(81, 111, 192, 0.986) , 95px 95px rgba(81, 112, 192, 0.988) , 96px 96px rgba(81, 112, 192, 0.99) , 97px 97px rgba(81, 112, 193, 0.992) , 98px 98px rgba(81, 112, 193, 0.994) , 99px 99px rgba(82, 113, 193, 0.996) , 100px 100px rgba(82, 113, 194, 0.998);
        }
        .card:nth-child(2) .card__front {
            background: #35a541;
        }
        .card:nth-child(2) .card__num {
            text-shadow:  1px 1px rgba(34, 107, 42, 0.8) , 2px 2px rgba(34, 108, 42, 0.802) , 3px 3px rgba(35, 109, 43, 0.804) , 4px 4px rgba(35, 110, 43, 0.806) , 5px 5px rgba(35, 110, 43, 0.808) , 6px 6px rgba(35, 111, 44, 0.81) , 7px 7px rgba(36, 112, 44, 0.812) , 8px 8px rgba(36, 113, 44, 0.814) , 9px 9px rgba(36, 114, 45, 0.816) , 10px 10px rgba(36, 114, 45, 0.818) , 11px 11px rgba(37, 115, 45, 0.82) , 12px 12px rgba(37, 116, 46, 0.822) , 13px 13px rgba(37, 117, 46, 0.824) , 14px 14px rgba(37, 118, 46, 0.826) , 15px 15px rgba(38, 118, 47, 0.828) , 16px 16px rgba(38, 119, 47, 0.83) , 17px 17px rgba(38, 120, 47, 0.832) , 18px 18px rgba(38, 121, 47, 0.834) , 19px 19px rgba(39, 121, 48, 0.836) , 20px 20px rgba(39, 122, 48, 0.838) , 21px 21px rgba(39, 123, 48, 0.84) , 22px 22px rgba(39, 124, 49, 0.842) , 23px 23px rgba(40, 124, 49, 0.844) , 24px 24px rgba(40, 125, 49, 0.846) , 25px 25px rgba(40, 126, 49, 0.848) , 26px 26px rgba(40, 126, 50, 0.85) , 27px 27px rgba(41, 127, 50, 0.852) , 28px 28px rgba(41, 128, 50, 0.854) , 29px 29px rgba(41, 128, 50, 0.856) , 30px 30px rgba(41, 129, 51, 0.858) , 31px 31px rgba(41, 130, 51, 0.86) , 32px 32px rgba(42, 130, 51, 0.862) , 33px 33px rgba(42, 131, 52, 0.864) , 34px 34px rgba(42, 132, 52, 0.866) , 35px 35px rgba(42, 132, 52, 0.868) , 36px 36px rgba(42, 133, 52, 0.87) , 37px 37px rgba(43, 134, 53, 0.872) , 38px 38px rgba(43, 134, 53, 0.874) , 39px 39px rgba(43, 135, 53, 0.876) , 40px 40px rgba(43, 135, 53, 0.878) , 41px 41px rgba(44, 136, 54, 0.88) , 42px 42px rgba(44, 137, 54, 0.882) , 43px 43px rgba(44, 137, 54, 0.884) , 44px 44px rgba(44, 138, 54, 0.886) , 45px 45px rgba(44, 138, 54, 0.888) , 46px 46px rgba(44, 139, 55, 0.89) , 47px 47px rgba(45, 140, 55, 0.892) , 48px 48px rgba(45, 140, 55, 0.894) , 49px 49px rgba(45, 141, 55, 0.896) , 50px 50px rgba(45, 141, 56, 0.898) , 51px 51px rgba(45, 142, 56, 0.9) , 52px 52px rgba(46, 142, 56, 0.902) , 53px 53px rgba(46, 143, 56, 0.904) , 54px 54px rgba(46, 143, 56, 0.906) , 55px 55px rgba(46, 144, 57, 0.908) , 56px 56px rgba(46, 145, 57, 0.91) , 57px 57px rgba(46, 145, 57, 0.912) , 58px 58px rgba(47, 146, 57, 0.914) , 59px 59px rgba(47, 146, 58, 0.916) , 60px 60px rgba(47, 147, 58, 0.918) , 61px 61px rgba(47, 147, 58, 0.92) , 62px 62px rgba(47, 148, 58, 0.922) , 63px 63px rgba(47, 148, 58, 0.924) , 64px 64px rgba(48, 149, 59, 0.926) , 65px 65px rgba(48, 149, 59, 0.928) , 66px 66px rgba(48, 150, 59, 0.93) , 67px 67px rgba(48, 150, 59, 0.932) , 68px 68px rgba(48, 151, 59, 0.934) , 69px 69px rgba(48, 151, 60, 0.936) , 70px 70px rgba(49, 152, 60, 0.938) , 71px 71px rgba(49, 152, 60, 0.94) , 72px 72px rgba(49, 153, 60, 0.942) , 73px 73px rgba(49, 153, 60, 0.944) , 74px 74px rgba(49, 154, 60, 0.946) , 75px 75px rgba(49, 154, 61, 0.948) , 76px 76px rgba(50, 154, 61, 0.95) , 77px 77px rgba(50, 155, 61, 0.952) , 78px 78px rgba(50, 155, 61, 0.954) , 79px 79px rgba(50, 156, 61, 0.956) , 80px 80px rgba(50, 156, 62, 0.958) , 81px 81px rgba(50, 157, 62, 0.96) , 82px 82px rgba(50, 157, 62, 0.962) , 83px 83px rgba(51, 158, 62, 0.964) , 84px 84px rgba(51, 158, 62, 0.966) , 85px 85px rgba(51, 158, 62, 0.968) , 86px 86px rgba(51, 159, 63, 0.97) , 87px 87px rgba(51, 159, 63, 0.972) , 88px 88px rgba(51, 160, 63, 0.974) , 89px 89px rgba(51, 160, 63, 0.976) , 90px 90px rgba(52, 161, 63, 0.978) , 91px 91px rgba(52, 161, 63, 0.98) , 92px 92px rgba(52, 161, 64, 0.982) , 93px 93px rgba(52, 162, 64, 0.984) , 94px 94px rgba(52, 162, 64, 0.986) , 95px 95px rgba(52, 163, 64, 0.988) , 96px 96px rgba(52, 163, 64, 0.99) , 97px 97px rgba(52, 163, 64, 0.992) , 98px 98px rgba(53, 164, 65, 0.994) , 99px 99px rgba(53, 164, 65, 0.996) , 100px 100px rgba(53, 165, 65, 0.998);
        }
        .card:nth-child(3) {
            margin-right: 0;
        }
        .card:nth-child(3) .card__front {
            background: #bdb235;
        }
        .card:nth-child(3) .card__num {
            text-shadow:  1px 1px rgba(129, 122, 36, 0.8) , 2px 2px rgba(130, 123, 36, 0.802) , 3px 3px rgba(131, 124, 37, 0.804) , 4px 4px rgba(132, 124, 37, 0.806) , 5px 5px rgba(133, 125, 37, 0.808) , 6px 6px rgba(133, 126, 37, 0.81) , 7px 7px rgba(134, 127, 37, 0.812) , 8px 8px rgba(135, 128, 38, 0.814) , 9px 9px rgba(136, 128, 38, 0.816) , 10px 10px rgba(137, 129, 38, 0.818) , 11px 11px rgba(138, 130, 38, 0.82) , 12px 12px rgba(138, 131, 39, 0.822) , 13px 13px rgba(139, 132, 39, 0.824) , 14px 14px rgba(140, 132, 39, 0.826) , 15px 15px rgba(141, 133, 39, 0.828) , 16px 16px rgba(142, 134, 40, 0.83) , 17px 17px rgba(142, 134, 40, 0.832) , 18px 18px rgba(143, 135, 40, 0.834) , 19px 19px rgba(144, 136, 40, 0.836) , 20px 20px rgba(145, 137, 40, 0.838) , 21px 21px rgba(145, 137, 41, 0.84) , 22px 22px rgba(146, 138, 41, 0.842) , 23px 23px rgba(147, 139, 41, 0.844) , 24px 24px rgba(148, 139, 41, 0.846) , 25px 25px rgba(148, 140, 41, 0.848) , 26px 26px rgba(149, 141, 42, 0.85) , 27px 27px rgba(150, 141, 42, 0.852) , 28px 28px rgba(150, 142, 42, 0.854) , 29px 29px rgba(151, 143, 42, 0.856) , 30px 30px rgba(152, 143, 42, 0.858) , 31px 31px rgba(152, 144, 43, 0.86) , 32px 32px rgba(153, 145, 43, 0.862) , 33px 33px rgba(154, 145, 43, 0.864) , 34px 34px rgba(154, 146, 43, 0.866) , 35px 35px rgba(155, 146, 43, 0.868) , 36px 36px rgba(156, 147, 44, 0.87) , 37px 37px rgba(156, 148, 44, 0.872) , 38px 38px rgba(157, 148, 44, 0.874) , 39px 39px rgba(158, 149, 44, 0.876) , 40px 40px rgba(158, 149, 44, 0.878) , 41px 41px rgba(159, 150, 45, 0.88) , 42px 42px rgba(160, 151, 45, 0.882) , 43px 43px rgba(160, 151, 45, 0.884) , 44px 44px rgba(161, 152, 45, 0.886) , 45px 45px rgba(161, 152, 45, 0.888) , 46px 46px rgba(162, 153, 45, 0.89) , 47px 47px rgba(163, 153, 46, 0.892) , 48px 48px rgba(163, 154, 46, 0.894) , 49px 49px rgba(164, 155, 46, 0.896) , 50px 50px rgba(164, 155, 46, 0.898) , 51px 51px rgba(165, 156, 46, 0.9) , 52px 52px rgba(166, 156, 46, 0.902) , 53px 53px rgba(166, 157, 47, 0.904) , 54px 54px rgba(167, 157, 47, 0.906) , 55px 55px rgba(167, 158, 47, 0.908) , 56px 56px rgba(168, 158, 47, 0.91) , 57px 57px rgba(168, 159, 47, 0.912) , 58px 58px rgba(169, 159, 47, 0.914) , 59px 59px rgba(169, 160, 47, 0.916) , 60px 60px rgba(170, 160, 48, 0.918) , 61px 61px rgba(171, 161, 48, 0.92) , 62px 62px rgba(171, 161, 48, 0.922) , 63px 63px rgba(172, 162, 48, 0.924) , 64px 64px rgba(172, 162, 48, 0.926) , 65px 65px rgba(173, 163, 48, 0.928) , 66px 66px rgba(173, 163, 49, 0.93) , 67px 67px rgba(174, 164, 49, 0.932) , 68px 68px rgba(174, 164, 49, 0.934) , 69px 69px rgba(175, 165, 49, 0.936) , 70px 70px rgba(175, 165, 49, 0.938) , 71px 71px rgba(176, 166, 49, 0.94) , 72px 72px rgba(176, 166, 49, 0.942) , 73px 73px rgba(177, 166, 50, 0.944) , 74px 74px rgba(177, 167, 50, 0.946) , 75px 75px rgba(178, 167, 50, 0.948) , 76px 76px rgba(178, 168, 50, 0.95) , 77px 77px rgba(179, 168, 50, 0.952) , 78px 78px rgba(179, 169, 50, 0.954) , 79px 79px rgba(180, 169, 50, 0.956) , 80px 80px rgba(180, 170, 50, 0.958) , 81px 81px rgba(180, 170, 51, 0.96) , 82px 82px rgba(181, 170, 51, 0.962) , 83px 83px rgba(181, 171, 51, 0.964) , 84px 84px rgba(182, 171, 51, 0.966) , 85px 85px rgba(182, 172, 51, 0.968) , 86px 86px rgba(183, 172, 51, 0.97) , 87px 87px rgba(183, 173, 51, 0.972) , 88px 88px rgba(184, 173, 51, 0.974) , 89px 89px rgba(184, 173, 52, 0.976) , 90px 90px rgba(184, 174, 52, 0.978) , 91px 91px rgba(185, 174, 52, 0.98) , 92px 92px rgba(185, 175, 52, 0.982) , 93px 93px rgba(186, 175, 52, 0.984) , 94px 94px rgba(186, 175, 52, 0.986) , 95px 95px rgba(187, 176, 52, 0.988) , 96px 96px rgba(187, 176, 52, 0.99) , 97px 97px rgba(187, 176, 53, 0.992) , 98px 98px rgba(188, 177, 53, 0.994) , 99px 99px rgba(188, 177, 53, 0.996) , 100px 100px rgba(189, 178, 53, 0.998);
        }
        .card:nth-child(4) .card__front {
            background: #db6623;
        }
        .card:nth-child(4) .card__num {
            text-shadow:  1px 1px rgba(153, 71, 24, 0.8) , 2px 2px rgba(154, 71, 24, 0.802) , 3px 3px rgba(155, 72, 24, 0.804) , 4px 4px rgba(156, 72, 24, 0.806) , 5px 5px rgba(157, 73, 25, 0.808) , 6px 6px rgba(158, 73, 25, 0.81) , 7px 7px rgba(159, 74, 25, 0.812) , 8px 8px rgba(160, 74, 25, 0.814) , 9px 9px rgba(161, 75, 25, 0.816) , 10px 10px rgba(162, 75, 25, 0.818) , 11px 11px rgba(162, 75, 26, 0.82) , 12px 12px rgba(163, 76, 26, 0.822) , 13px 13px rgba(164, 76, 26, 0.824) , 14px 14px rgba(165, 77, 26, 0.826) , 15px 15px rgba(166, 77, 26, 0.828) , 16px 16px rgba(167, 77, 26, 0.83) , 17px 17px rgba(168, 78, 26, 0.832) , 18px 18px rgba(169, 78, 27, 0.834) , 19px 19px rgba(169, 79, 27, 0.836) , 20px 20px rgba(170, 79, 27, 0.838) , 21px 21px rgba(171, 79, 27, 0.84) , 22px 22px rgba(172, 80, 27, 0.842) , 23px 23px rgba(173, 80, 27, 0.844) , 24px 24px rgba(173, 81, 27, 0.846) , 25px 25px rgba(174, 81, 28, 0.848) , 26px 26px rgba(175, 81, 28, 0.85) , 27px 27px rgba(176, 82, 28, 0.852) , 28px 28px rgba(177, 82, 28, 0.854) , 29px 29px rgba(177, 82, 28, 0.856) , 30px 30px rgba(178, 83, 28, 0.858) , 31px 31px rgba(179, 83, 28, 0.86) , 32px 32px rgba(180, 83, 28, 0.862) , 33px 33px rgba(180, 84, 29, 0.864) , 34px 34px rgba(181, 84, 29, 0.866) , 35px 35px rgba(182, 85, 29, 0.868) , 36px 36px rgba(182, 85, 29, 0.87) , 37px 37px rgba(183, 85, 29, 0.872) , 38px 38px rgba(184, 86, 29, 0.874) , 39px 39px rgba(185, 86, 29, 0.876) , 40px 40px rgba(185, 86, 29, 0.878) , 41px 41px rgba(186, 87, 30, 0.88) , 42px 42px rgba(187, 87, 30, 0.882) , 43px 43px rgba(187, 87, 30, 0.884) , 44px 44px rgba(188, 87, 30, 0.886) , 45px 45px rgba(189, 88, 30, 0.888) , 46px 46px rgba(189, 88, 30, 0.89) , 47px 47px rgba(190, 88, 30, 0.892) , 48px 48px rgba(191, 89, 30, 0.894) , 49px 49px rgba(191, 89, 30, 0.896) , 50px 50px rgba(192, 89, 30, 0.898) , 51px 51px rgba(193, 90, 31, 0.9) , 52px 52px rgba(193, 90, 31, 0.902) , 53px 53px rgba(194, 90, 31, 0.904) , 54px 54px rgba(194, 90, 31, 0.906) , 55px 55px rgba(195, 91, 31, 0.908) , 56px 56px rgba(196, 91, 31, 0.91) , 57px 57px rgba(196, 91, 31, 0.912) , 58px 58px rgba(197, 92, 31, 0.914) , 59px 59px rgba(198, 92, 31, 0.916) , 60px 60px rgba(198, 92, 32, 0.918) , 61px 61px rgba(199, 92, 32, 0.92) , 62px 62px rgba(199, 93, 32, 0.922) , 63px 63px rgba(200, 93, 32, 0.924) , 64px 64px rgba(200, 93, 32, 0.926) , 65px 65px rgba(201, 94, 32, 0.928) , 66px 66px rgba(202, 94, 32, 0.93) , 67px 67px rgba(202, 94, 32, 0.932) , 68px 68px rgba(203, 94, 32, 0.934) , 69px 69px rgba(203, 95, 32, 0.936) , 70px 70px rgba(204, 95, 32, 0.938) , 71px 71px rgba(204, 95, 33, 0.94) , 72px 72px rgba(205, 95, 33, 0.942) , 73px 73px rgba(205, 96, 33, 0.944) , 74px 74px rgba(206, 96, 33, 0.946) , 75px 75px rgba(206, 96, 33, 0.948) , 76px 76px rgba(207, 96, 33, 0.95) , 77px 77px rgba(208, 97, 33, 0.952) , 78px 78px rgba(208, 97, 33, 0.954) , 79px 79px rgba(209, 97, 33, 0.956) , 80px 80px rgba(209, 97, 33, 0.958) , 81px 81px rgba(210, 98, 33, 0.96) , 82px 82px rgba(210, 98, 34, 0.962) , 83px 83px rgba(211, 98, 34, 0.964) , 84px 84px rgba(211, 98, 34, 0.966) , 85px 85px rgba(212, 99, 34, 0.968) , 86px 86px rgba(212, 99, 34, 0.97) , 87px 87px rgba(213, 99, 34, 0.972) , 88px 88px rgba(213, 99, 34, 0.974) , 89px 89px rgba(214, 99, 34, 0.976) , 90px 90px rgba(214, 100, 34, 0.978) , 91px 91px rgba(214, 100, 34, 0.98) , 92px 92px rgba(215, 100, 34, 0.982) , 93px 93px rgba(215, 100, 34, 0.984) , 94px 94px rgba(216, 101, 34, 0.986) , 95px 95px rgba(216, 101, 35, 0.988) , 96px 96px rgba(217, 101, 35, 0.99) , 97px 97px rgba(217, 101, 35, 0.992) , 98px 98px rgba(218, 101, 35, 0.994) , 99px 99px rgba(218, 102, 35, 0.996) , 100px 100px rgba(219, 102, 35, 0.998);
        }
        .card:nth-child(5) .card__front {
            background: #3e5eb3;
        }
        .card:nth-child(5) .card__num {
            text-shadow:  1px 1px rgba(42, 64, 122, 0.8) , 2px 2px rgba(42, 64, 123, 0.802) , 3px 3px rgba(43, 65, 124, 0.804) , 4px 4px rgba(43, 65, 125, 0.806) , 5px 5px rgba(43, 66, 125, 0.808) , 6px 6px rgba(43, 66, 126, 0.81) , 7px 7px rgba(44, 67, 127, 0.812) , 8px 8px rgba(44, 67, 128, 0.814) , 9px 9px rgba(44, 67, 129, 0.816) , 10px 10px rgba(45, 68, 129, 0.818) , 11px 11px rgba(45, 68, 130, 0.82) , 12px 12px rgba(45, 69, 131, 0.822) , 13px 13px rgba(45, 69, 132, 0.824) , 14px 14px rgba(46, 69, 132, 0.826) , 15px 15px rgba(46, 70, 133, 0.828) , 16px 16px rgba(46, 70, 134, 0.83) , 17px 17px rgba(46, 71, 135, 0.832) , 18px 18px rgba(47, 71, 135, 0.834) , 19px 19px rgba(47, 71, 136, 0.836) , 20px 20px rgba(47, 72, 137, 0.838) , 21px 21px rgba(47, 72, 138, 0.84) , 22px 22px rgba(48, 73, 138, 0.842) , 23px 23px rgba(48, 73, 139, 0.844) , 24px 24px rgba(48, 73, 140, 0.846) , 25px 25px rgba(48, 74, 140, 0.848) , 26px 26px rgba(49, 74, 141, 0.85) , 27px 27px rgba(49, 74, 142, 0.852) , 28px 28px rgba(49, 75, 142, 0.854) , 29px 29px rgba(49, 75, 143, 0.856) , 30px 30px rgba(50, 75, 144, 0.858) , 31px 31px rgba(50, 76, 144, 0.86) , 32px 32px rgba(50, 76, 145, 0.862) , 33px 33px rgba(50, 76, 146, 0.864) , 34px 34px rgba(50, 77, 146, 0.866) , 35px 35px rgba(51, 77, 147, 0.868) , 36px 36px rgba(51, 77, 147, 0.87) , 37px 37px rgba(51, 78, 148, 0.872) , 38px 38px rgba(51, 78, 149, 0.874) , 39px 39px rgba(52, 78, 149, 0.876) , 40px 40px rgba(52, 79, 150, 0.878) , 41px 41px rgba(52, 79, 151, 0.88) , 42px 42px rgba(52, 79, 151, 0.882) , 43px 43px rgba(52, 80, 152, 0.884) , 44px 44px rgba(53, 80, 152, 0.886) , 45px 45px rgba(53, 80, 153, 0.888) , 46px 46px rgba(53, 81, 153, 0.89) , 47px 47px rgba(53, 81, 154, 0.892) , 48px 48px rgba(53, 81, 155, 0.894) , 49px 49px rgba(54, 81, 155, 0.896) , 50px 50px rgba(54, 82, 156, 0.898) , 51px 51px rgba(54, 82, 156, 0.9) , 52px 52px rgba(54, 82, 157, 0.902) , 53px 53px rgba(54, 83, 157, 0.904) , 54px 54px rgba(55, 83, 158, 0.906) , 55px 55px rgba(55, 83, 158, 0.908) , 56px 56px rgba(55, 83, 159, 0.91) , 57px 57px rgba(55, 84, 159, 0.912) , 58px 58px rgba(55, 84, 160, 0.914) , 59px 59px rgba(55, 84, 160, 0.916) , 60px 60px rgba(56, 85, 161, 0.918) , 61px 61px rgba(56, 85, 161, 0.92) , 62px 62px rgba(56, 85, 162, 0.922) , 63px 63px rgba(56, 85, 162, 0.924) , 64px 64px rgba(56, 86, 163, 0.926) , 65px 65px rgba(57, 86, 163, 0.928) , 66px 66px rgba(57, 86, 164, 0.93) , 67px 67px rgba(57, 86, 164, 0.932) , 68px 68px rgba(57, 87, 165, 0.934) , 69px 69px rgba(57, 87, 165, 0.936) , 70px 70px rgba(57, 87, 166, 0.938) , 71px 71px rgba(58, 87, 166, 0.94) , 72px 72px rgba(58, 88, 167, 0.942) , 73px 73px rgba(58, 88, 167, 0.944) , 74px 74px rgba(58, 88, 168, 0.946) , 75px 75px rgba(58, 88, 168, 0.948) , 76px 76px rgba(58, 89, 169, 0.95) , 77px 77px rgba(59, 89, 169, 0.952) , 78px 78px rgba(59, 89, 170, 0.954) , 79px 79px rgba(59, 89, 170, 0.956) , 80px 80px rgba(59, 89, 170, 0.958) , 81px 81px rgba(59, 90, 171, 0.96) , 82px 82px rgba(59, 90, 171, 0.962) , 83px 83px rgba(59, 90, 172, 0.964) , 84px 84px rgba(60, 90, 172, 0.966) , 85px 85px rgba(60, 91, 173, 0.968) , 86px 86px rgba(60, 91, 173, 0.97) , 87px 87px rgba(60, 91, 173, 0.972) , 88px 88px rgba(60, 91, 174, 0.974) , 89px 89px rgba(60, 92, 174, 0.976) , 90px 90px rgba(60, 92, 175, 0.978) , 91px 91px rgba(61, 92, 175, 0.98) , 92px 92px rgba(61, 92, 175, 0.982) , 93px 93px rgba(61, 92, 176, 0.984) , 94px 94px rgba(61, 93, 176, 0.986) , 95px 95px rgba(61, 93, 177, 0.988) , 96px 96px rgba(61, 93, 177, 0.99) , 97px 97px rgba(61, 93, 177, 0.992) , 98px 98px rgba(62, 93, 178, 0.994) , 99px 99px rgba(62, 94, 178, 0.996) , 100px 100px rgba(62, 94, 179, 0.998);
        }
        .card:nth-child(6) .card__front {
            background: #aa9e5c;
        }
        .card:nth-child(6) .card__num {
            text-shadow:  1px 1px rgba(122, 113, 64, 0.8) , 2px 2px rgba(123, 114, 64, 0.802) , 3px 3px rgba(123, 114, 65, 0.804) , 4px 4px rgba(124, 115, 65, 0.806) , 5px 5px rgba(125, 116, 66, 0.808) , 6px 6px rgba(126, 116, 66, 0.81) , 7px 7px rgba(126, 117, 66, 0.812) , 8px 8px rgba(127, 118, 67, 0.814) , 9px 9px rgba(128, 118, 67, 0.816) , 10px 10px rgba(128, 119, 68, 0.818) , 11px 11px rgba(129, 119, 68, 0.82) , 12px 12px rgba(130, 120, 68, 0.822) , 13px 13px rgba(130, 121, 69, 0.824) , 14px 14px rgba(131, 121, 69, 0.826) , 15px 15px rgba(131, 122, 69, 0.828) , 16px 16px rgba(132, 122, 70, 0.83) , 17px 17px rgba(133, 123, 70, 0.832) , 18px 18px rgba(133, 124, 71, 0.834) , 19px 19px rgba(134, 124, 71, 0.836) , 20px 20px rgba(134, 125, 71, 0.838) , 21px 21px rgba(135, 125, 72, 0.84) , 22px 22px rgba(136, 126, 72, 0.842) , 23px 23px rgba(136, 126, 72, 0.844) , 24px 24px rgba(137, 127, 73, 0.846) , 25px 25px rgba(137, 127, 73, 0.848) , 26px 26px rgba(138, 128, 73, 0.85) , 27px 27px rgba(139, 129, 74, 0.852) , 28px 28px rgba(139, 129, 74, 0.854) , 29px 29px rgba(140, 130, 74, 0.856) , 30px 30px rgba(140, 130, 75, 0.858) , 31px 31px rgba(141, 131, 75, 0.86) , 32px 32px rgba(141, 131, 75, 0.862) , 33px 33px rgba(142, 132, 76, 0.864) , 34px 34px rgba(142, 132, 76, 0.866) , 35px 35px rgba(143, 133, 76, 0.868) , 36px 36px rgba(143, 133, 77, 0.87) , 37px 37px rgba(144, 134, 77, 0.872) , 38px 38px rgba(144, 134, 77, 0.874) , 39px 39px rgba(145, 135, 77, 0.876) , 40px 40px rgba(145, 135, 78, 0.878) , 41px 41px rgba(146, 136, 78, 0.88) , 42px 42px rgba(146, 136, 78, 0.882) , 43px 43px rgba(147, 136, 79, 0.884) , 44px 44px rgba(147, 137, 79, 0.886) , 45px 45px rgba(148, 137, 79, 0.888) , 46px 46px rgba(148, 138, 79, 0.89) , 47px 47px rgba(149, 138, 80, 0.892) , 48px 48px rgba(149, 139, 80, 0.894) , 49px 49px rgba(150, 139, 80, 0.896) , 50px 50px rgba(150, 140, 81, 0.898) , 51px 51px rgba(151, 140, 81, 0.9) , 52px 52px rgba(151, 140, 81, 0.902) , 53px 53px rgba(152, 141, 81, 0.904) , 54px 54px rgba(152, 141, 82, 0.906) , 55px 55px rgba(153, 142, 82, 0.908) , 56px 56px rgba(153, 142, 82, 0.91) , 57px 57px rgba(154, 143, 82, 0.912) , 58px 58px rgba(154, 143, 83, 0.914) , 59px 59px rgba(154, 143, 83, 0.916) , 60px 60px rgba(155, 144, 83, 0.918) , 61px 61px rgba(155, 144, 83, 0.92) , 62px 62px rgba(156, 145, 84, 0.922) , 63px 63px rgba(156, 145, 84, 0.924) , 64px 64px rgba(156, 145, 84, 0.926) , 65px 65px rgba(157, 146, 84, 0.928) , 66px 66px rgba(157, 146, 85, 0.93) , 67px 67px rgba(158, 146, 85, 0.932) , 68px 68px rgba(158, 147, 85, 0.934) , 69px 69px rgba(159, 147, 85, 0.936) , 70px 70px rgba(159, 148, 86, 0.938) , 71px 71px rgba(159, 148, 86, 0.94) , 72px 72px rgba(160, 148, 86, 0.942) , 73px 73px rgba(160, 149, 86, 0.944) , 74px 74px rgba(161, 149, 86, 0.946) , 75px 75px rgba(161, 149, 87, 0.948) , 76px 76px rgba(161, 150, 87, 0.95) , 77px 77px rgba(162, 150, 87, 0.952) , 78px 78px rgba(162, 151, 87, 0.954) , 79px 79px rgba(162, 151, 88, 0.956) , 80px 80px rgba(163, 151, 88, 0.958) , 81px 81px rgba(163, 152, 88, 0.96) , 82px 82px rgba(164, 152, 88, 0.962) , 83px 83px rgba(164, 152, 88, 0.964) , 84px 84px rgba(164, 153, 89, 0.966) , 85px 85px rgba(165, 153, 89, 0.968) , 86px 86px rgba(165, 153, 89, 0.97) , 87px 87px rgba(165, 154, 89, 0.972) , 88px 88px rgba(166, 154, 89, 0.974) , 89px 89px rgba(166, 154, 90, 0.976) , 90px 90px rgba(166, 155, 90, 0.978) , 91px 91px rgba(167, 155, 90, 0.98) , 92px 92px rgba(167, 155, 90, 0.982) , 93px 93px rgba(167, 156, 90, 0.984) , 94px 94px rgba(168, 156, 91, 0.986) , 95px 95px rgba(168, 156, 91, 0.988) , 96px 96px rgba(168, 156, 91, 0.99) , 97px 97px rgba(169, 157, 91, 0.992) , 98px 98px rgba(169, 157, 91, 0.994) , 99px 99px rgba(169, 157, 92, 0.996) , 100px 100px rgba(170, 158, 92, 0.998);
        }
        .card:last-child {
            margin-right: 0;
        }
        .card__flipper {
            cursor: pointer;
            -webkit-transform-style: preserve-3d;
            transform-style: preserve-3d;
            -webkit-transition: all 0.6s cubic-bezier(0.23, 1, 0.32, 1);
            transition: all 0.6s cubic-bezier(0.23, 1, 0.32, 1);
        }
        .card__front, .card__back {
            position: absolute;
            -webkit-backface-visibility: hidden;
            backface-visibility: hidden;
            top: 0;
            left: 0;
            width: 100%;
            height: 340px;
        }
        .card__front {
            -webkit-transform: rotateY(0);
            transform: rotateY(0);
            z-index: 2;
            overflow: hidden;
        }
        .card__back {
            -webkit-transform: rotateY(180deg) scale(1.1);
            transform: rotateY(180deg) scale(1.1);
            background: #141414;
            display: -webkit-box;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            -webkit-flex-flow: column wrap;
            -ms-flex-flow: column wrap;
            flex-flow: column wrap;
            -webkit-box-align: center;
            -webkit-align-items: center;
            -ms-flex-align: center;
            align-items: center;
            -webkit-box-pack: center;
            -webkit-justify-content: center;
            -ms-flex-pack: center;
            justify-content: center;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
        }
        .card__back span {
            position: absolute;
            top: 50%;
            left: 50%;
            -webkit-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
        }
        .card__name {
            font-size: 32px;
            line-height: 0.9;
            font-weight: 700;
            text-align: center;
            color: #fff;
            margin-top: 36px;
        }
        .card__name span {
            font-size: 14px;
            margin-bottom: 10px;
            display: block;
        }
        .card__num {
            font-size: 120px;
            margin: 56px 8px 0 0;
            font-weight: 700;
            color: #fff;
            text-align: center;
        }
        @media (max-width: 700px) {
            .card__num {
                font-size: 70px;
            }
        }
        @media (max-width: 700px) {
            .card {
                width: 100%;
                height: 290px;
                margin-right: 0;
                float: none;
            }
            .card .card__front,
            .card .card__back {
                height: 290px;
            }
        }

      .card__front a{
          display: block;
          height:100%;
      }

    </style>
@endsection


@section('content')
    @include('front.layouts.ucenter_top_bg',['title'=>['亲爱的，欢迎你','个人中心']])
    <main class="mdl-layout__content">

        <div class="mdl-grid m-t-20">
            <div class="mdl-cell mdl-cell--3-col">
                @include('front.layouts.ucenter_menu')
            </div>
            <div class="mdl-cell mdl-cell--9-col" style="padding-top: 185px">
                <ul class="tile">
                    <li class="card">
                        <div class="card__flipper">
                            <div class="card__front">
                                <a href="{{route('ucenter.favorites')}}">
                                <p class="card__name"><span>Collections</span>收藏</p>
                                <p class="card__num">{{$fav_count}}</p>
                                </a>
                            </div>
                        </div>
                    </li>
                    <li class="card">
                        <div class="card__flipper">
                            <div class="card__front">
                                <a href="{{route('ucenter.comments')}}">
                                <p class="card__name"><span>Comments</span>评论</p>
                                <p class="card__num">{{$comments_count}}</p>
                                    </a>
                            </div>
                        </div>
                    </li>

                    <li class="card">
                        <div class="card__flipper">
                            <div class="card__front">
                                <a href="{{route('ucenter.notifications')}}">
                                <p class="card__name"><span>Messages</span>消息</p>
                                <p class="card__num">{{$notificatios_count}}</p>
                                    </a>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>

    </main>

@endsection

@section('custom_js')
    <script src="/assets/js/avatar_upload.js"></script>
    <script src="/assets/js/animated_bg/animated_bg.js"></script>
@endsection
