<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
.yash {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-evenly;
    gap: 30px;
}

/* Card Design */
.card {
    width: calc(30.33% - 20px); /* 3 cards per row */
    background: linear-gradient(145deg, #ffffff);
    border-radius: 16px;
    box-shadow: 0 15px 25px rgba(0, 0, 0, 0.1);
    transition:  box-shadow 0.4s;
    overflow: hidden;
    position: relative;
    border: 1px solid;
    padding: 10px;
    text-align: center;
}
/* Company Logo */
.company-logo {
    width: 80px;
    height: 80px;
    margin-bottom: 10px;
    object-fit: contain;
}

/* Card Content */
.card-content {
   
}

.card-title {
    font-size: 1.8em;
    font-weight: bold;
    color: #343a40;
    margin-bottom: 15px;
}

.card-text {
    font-size: 1em;
    color: #555;
    margin-bottom: 10px;
    line-height: 1.5;
    display: flex;
    gap: 8px;
}

/* Apply Now Button */
.card-btn {
    display: inline-block;
    padding: 12px 20px;
    margin-top: 15px;
    background: linear-gradient(45deg, #fe9703, #fe9703);
    color: white;
    font-weight: bold;
    border: none;
    border-radius: 30px;
    cursor: pointer;
    transition: background 0.4s, transform 0.2s;
    box-shadow: 0 5px 10px rgba(0, 123, 255, 0.2);
}

.card-btn:hover {
    background: linear-gradient(45deg, #fe9703, #fe9703);
    transform: translateY(-5px);
}

/* Hover Animation */

#preloader {
    position: fixed;
    top: 0;
    right: 0;
    left: 0;
    bottom: 0;
    background-color: #fff;
    z-index: 999999;
    transition: 0.3s ease opacity;
    text-align: center;
    width: 100%;
    height: 100%
}

#preloader:before {
    content: "";
    width: 80px;
    height: 80px;
    border: 3px solid #26ae61;
    display: block;
    border-radius: 50%;
    position: absolute;
    top: 50%;
    left: 50%;
    opacity: 0;
    transform: translate(-50%, -50%);
    animation-name: LoaderCicle;
    animation-duration: 2s;
    animation-iteration-count: infinite;
    animation-timing-function: linear
}

#preloader:after {
    content: "";
    width: 80px;
    height: 80px;
    border: 3px solid #26ae61;
    display: block;
    border-radius: 50%;
    position: absolute;
    top: 50%;
    left: 50%;
    opacity: 0;
    transform: translate(-50%, -50%);
    animation-name: LoaderCicle;
    animation-duration: 2s;
    animation-iteration-count: infinite;
    animation-timing-function: linear;
    animation-delay: 1s
}

@keyframes LoaderCicle {
    0% {
        width: 0;
        height: 0;
        opacity: 0
    }
    10% {
        width: 10px;
        height: 10px;
        opacity: 1
    }
    80% {
        width: 60px;
        height: 60px;
        opacity: 0.1
    }
    100% {
        width: 70px;
        height: 70px;
        opacity: 0
    }
}

a:hover,
a:active {
    color: #26ae61;
    text-decoration: none
}

.bg-primary {
    background-color: #26ae61 !important
}

.bg-primary-light {
    background-color: rgba(38, 174, 97, 0.04) !important
}

.bg-primary-medium {
    background-color: #f5f6fe !important
}

.bg-secondary {
    background-color: #fe9703 !important
}

.bg-secondary-light {
    background-color: rgba(254, 151, 3, 0.15) !important
}

.theme-overlay[data-overlay-dark]:before {
    background: #26ae61
}

.text-primary {
    color: #26ae61 !important
}

.text-secondary {
    color: #fe9703 !important
}

.border-primary {
    border-color: #26ae61 !important
}

.white-hover:hover {
    color: #fff !important
}

.secondary-hover:hover {
    color: #fe9703 !important
}

.map-h250 {
    height: 250px;
    width: 100%
}

.map-h350 {
    height: 350px;
    width: 100%
}

.map-h500 {
    height: 500px;
    width: 100%
}

.box-shadow1 {
    box-shadow: 0 0px 14px 0 rgba(0, 0, 0, 0.08);
    background: #ffffff
}

.height-300 {
    height: 300px
}

.min-height-250 {
    min-height: 250px
}

.min-height-300 {
    min-height: 300px
}

.min-height-350 {
    min-height: 350px
}

.rounded-start-md-5px {
    border-top-left-radius: 5px;
    border-bottom-left-radius: 5px
}

.rounded-end-md-5px {
    border-top-right-radius: 5px;
    border-bottom-right-radius: 5px
}

.rounded-start-lg-10px {
    border-top-left-radius: 10px;
    border-bottom-left-radius: 10px
}

.rounded-end-lg-10px {
    border-top-right-radius: 10px;
    border-bottom-right-radius: 10px
}

.rounded-top-10px {
    border-top-left-radius: 10px;
    border-top-right-radius: 10px
}

@media screen and (max-width: 991px) {
    .rounded-start-md-10px {
        border-top-left-radius: 10px;
        border-bottom-left-radius: 10px
    }
}

@media screen and (max-width: 767px) {
    .rounded-start-md-5px {
        border-top-left-radius: 0px;
        border-bottom-left-radius: 0px
    }
    .rounded-top-sm-5px {
        border-top-left-radius: 5px;
        border-top-right-radius: 5px
    }
    .rounded-end-md-5px {
        border-top-right-radius: 0;
        border-bottom-right-radius: 0
    }
    .rounded-bottom-sm-5px {
        border-bottom-left-radius: 5px;
        border-bottom-right-radius: 5px
    }
}

.cursor-pointer {
    cursor: pointer
}

.clear {
    clear: both
}

.scroll-to-top {
    font-size: 20px;
    text-align: center;
    color: #fff;
    text-decoration: none;
    position: fixed;
    bottom: 20px;
    right: 20px;
    display: none;
    border-radius: 50%;
    background: #26ae61;
    border: 1px solid #26ae61;
    width: 35px;
    height: 35px;
    line-height: 35px;
    z-index: 9999;
    outline: 0;
    -webkit-transition: all .3s ease;
    -moz-transition: all .3s ease;
    -o-transition: all 0.3s ease
}

.scroll-to-top i {
    color: #fff
}

.scroll-to-top:hover {
    color: #ffffff;
    border: 1px solid #000;
    background: #000
}

.scroll-to-top:hover i {
    color: #ffffff
}

.scroll-to-top:visited {
    color: #ffffff;
    text-decoration: none
}

.butn {
    background: #26ae61;
    cursor: pointer;
    font-weight: 400;
    color: #ffffff;
    font-size: 16px;
    line-height: 15px;
    padding: 15px 25px !important;
    border-radius: 10px;
    display: inline-block;
    vertical-align: middle;
    position: relative;
    transition: all linear 300ms;
    border: none
}

.butn:hover,
.butn:active,
.butn:focus {
    color: #fff;
    background: #fe9703
}

.butn:hover.white-hover:hover,
.butn:hover.white-hover:active,
.butn:hover.white-hover:focus,
.butn:active.white-hover:hover,
.butn:active.white-hover:active,
.butn:active.white-hover:focus,
.butn:focus.white-hover:hover,
.butn:focus.white-hover:active,
.butn:focus.white-hover:focus {
    background: #fff;
    color: #575a7b !important
}

.butn.secondary {
    background: #fe9703
}

.butn.secondary:hover,
.butn.secondary:active,
.butn.secondary:focus {
    background: #26ae61;
    color: #fff
}

.butn.secondary.secondary.white-hover:hover,
.butn.secondary.secondary.white-hover:active,
.butn.secondary.secondary.white-hover:focus {
    background: #fff;
    color: #575a7b !important
}

.butn.radius {
    border-radius: 5px
}

.butn.radius-10 {
    border-radius: 10px
}

.butn.butn-md {
    padding: 12px 17px !important
}

.butn.butn-sm {
    padding: 10px 15px !important
}

@media screen and (max-width: 767px) {
    .butn {
        padding: 12px 20px !important;
        font-size: 14px
    }
}

.ani-left-right {
    animation-duration: 5s;
    animation-iteration-count: infinite;
    animation-name: LeftRight;
    animation-timing-function: ease-in-out
}

@keyframes LeftRight {
    0% {
        transform: translate(0px, 0px)
    }
    65% {
        transform: translate(30px, 0)
    }
    100% {
        transform: translate(0px, 0px)
    }
}

.ani-top-bottom {
    animation-duration: 5s;
    animation-iteration-count: infinite;
    animation-name: TopBottom;
    animation-timing-function: ease-in-out
}

@keyframes TopBottom {
    0% {
        transform: translate(0px, 0px)
    }
    65% {
        transform: translate(0, 30px)
    }
    100% {
        transform: translate(0px, 0px)
    }
}

.list-style {
    margin-bottom: 5px;
    padding: 0;
    list-style: none
}

.list-style li {
    position: relative;
    font-size: 14px;
    color: #696969;
    padding-left: 20px;
    display: inline-block;
    font-weight: 500;
    margin: 5px 10px 5px 0
}

.list-style li:first-child {
    padding-left: 0
}

.list-style li:first-child:before {
    content: none
}

.list-style li:before {
    position: absolute;
    left: 0;
    top: 50%;
    margin-top: -3px;
    height: 6px;
    width: 6px;
    background: #696969;
    border-radius: 50%;
    content: ""
}

.list-style2 {
    padding: 0;
    margin-bottom: 20px
}

.list-style2 li {
    position: relative;
    display: inline-block;
    font-size: 15px;
    font-weight: 500
}

.list-style2 li a:hover {
    color: #27ae60
}

.list-style2>li+li {
    padding-left: 25px;
    margin-left: 15px
}

.list-style2>li+li:before {
    content: "";
    background: #27ae60;
    width: 15px;
    height: 2px;
    position: absolute;
    left: -6px;
    top: 12px
}

@media screen and (max-width: 1199px) {
    .list-style2>li+li {
        padding-left: 20px
    }
}

.list-style3 {
    list-style: none;
    margin-bottom: 30px;
    padding: 0
}

.list-style3 li {
    margin-bottom: 15px
}

.list-style3 li span {
    color: #282b2d;
    position: relative;
    padding-left: 30px
}

.list-style3 li span:before {
    font-family: "Font Awesome 5 Free";
    content: "\f00c";
    font-size: 16px;
    font-weight: 600;
    position: absolute;
    left: 0;
    top: -3px;
    color: #fe9703
}

.list-style3 li:last-child {
    margin-bottom: 0
}

.list-style4 {
    margin-bottom: 25px;
    padding: 0;
    list-style: none;
    text-align: center
}

.list-style4 li {
    border-bottom: 2px dotted #ededed;
    padding-bottom: 10px;
    margin-bottom: 15px;
    text-transform: capitalize
}

.list-style4 li:last-child {
    padding-bottom: 0;
    margin-bottom: 0;
    border-bottom: 0
}

.list-style5 {
    list-style: none;
    padding: 0;
    margin-bottom: 0
}

.list-style5 li {
    margin-bottom: 20px;
    border-bottom: 1px solid #ededed;
    padding-bottom: 15px;
    font-size: 16px;
    display: flex
}

.list-style5 li:last-child {
    margin-bottom: 0;
    border-bottom: 0;
    padding-bottom: 0
}

.list-style5 li span {
    font-weight: 600;
    display: inline-block;
    margin-right: 15px;
    position: relative;
    max-width: 110px;
    width: 100%
}

.list-style5 li span:after {
    content: ":";
    font-size: 18px;
    font-weight: 500;
    position: absolute;
    top: -3px;
    right: 0
}

@media screen and (max-width: 1199px) {
    .list-style5 li {
        font-size: 15px
    }
    .list-style5 li span {
        width: 105px
    }
}

.list-style6 {
    margin: 0;
    padding: 0;
    list-style: none
}

.list-style6 li {
    font-size: 16px;
    font-weight: 500;
    border-bottom: 1px dotted #dddddd;
    position: relative;
    padding-bottom: 15px;
    margin-bottom: 15px
}

.list-style6 li a {
    color: #002147;
    display: inline-block
}

.list-style6 li:last-child {
    border-bottom: none;
    padding-bottom: 0;
    margin-bottom: 0
}

.list-style6 li a:hover {
    color: #26ae61
}

.list-style6 li span {
    position: absolute;
    right: 0;
    top: 0;
    width: 26px;
    height: 26px;
    line-height: 26px;
    text-align: center;
    display: block;
    font-size: 13px;
    color: #ffffff;
    font-weight: 600;
    border-radius: 50%;
    background-color: #fe9703
}

.list-style6 li a i {
    color: #26ae61;
    font-size: 14px;
    display: inline-block;
    margin: 0 10px 0 0;
    vertical-align: middle
}

#top-bar {
    display: block;
    position: relative;
    z-index: 999;
    padding: 7px 0
}

.top-bar-info {
    display: inline-block;
    vertical-align: middle
}

.top-bar-info li i {
    font-size: 16px;
    color: #26ae61;
    margin-right: 8px;
    margin-top: 0;
    display: inline-block;
    vertical-align: text-bottom
}

.top-bar-info ul {
    margin-bottom: 0
}

.top-bar-info li {
    font-weight: 500;
    list-style-type: none;
    font-size: 15px;
    border-color: rgba(225, 225, 225, 0.6) !important;
    padding: 0 15px 0 0;
    display: inline-block;
    margin-right: 10px;
    margin-bottom: 0
}

.top-bar-info li:last-child {
    padding-right: 0;
    margin-right: 0
}

.top-social-icon {
    padding: 0;
    float: right;
    margin: 0
}

.top-social-icon li {
    font-size: 14px;
    list-style-type: none;
    float: left;
    text-align: center;
    margin: 0;
    padding: 0 7px
}

.top-social-icon li:last-child {
    padding-right: 0
}

.top-social-icon li:last-child a {
    padding-right: 0
}

.top-social-icon li a {
    color: #fff;
    line-height: 28px;
    -moz-transition-duration: .3s;
    -ms-transition-duration: .3s;
    -webkit-transition-duration: .3s;
    -o-transition-duration: .3s;
    transition-duration: .3s;
    padding: 0 3px
}

.top-social-icon li a:hover {
    color: #fe9703
}

@media screen and (max-width: 575px) {
    .top-bar-info li {
        border-right: none !important;
        margin-right: 0
    }
}

.navbar-nav li.current>a,
.navbar-nav li.active>a {
    color: #26ae61
}

.attr-nav>ul>li>a.butn {
    color: #fff
}

.navbar>ul>li.current>a:after {
    border-color: transparent #26ae61 #26ae61 transparent
}

.menu_area-light .navbar-nav li.current>a,
.menu_area-light .navbar-nav li.active>a {
    color: #fe9703
}

.menu_area-light .navbar>ul>li.current>a:after {
    border-color: transparent #fe9703 #fe9703 transparent
}

.menu_area-light.scrollHeader .navbar-nav li.current>a {
    color: #26ae61
}

.menu_area-light.scrollHeader .navbar-nav li.current>a:hover {
    color: #26ae61
}

.menu_area-light.scrollHeader .navbar-nav li.active>a {
    color: #26ae61
}

.menu_area-light.scrollHeader .navbar>ul>li.current>a:after {
    border-color: transparent #26ae61 #26ae61 transparent
}

@media screen and (max-width: 991px) {
    .header-style1 .navbar-toggler {
        background: #26ae61
    }
    .header-style1 .navbar-toggler:after {
        border-top: 2px solid #fff;
        border-bottom: 2px solid #fff
    }
    .header-style1 .navbar-toggler:before {
        background: #fff
    }
    .header-style1 .navbar-toggler.menu-opened:after,
    .header-style1 .navbar-toggler.menu-opened:before {
        background: #fff
    }
}

.header-style2 .navbar-nav li.current>a {
    color: #26ae61
}

.header-style2 .navbar>ul>li.current>a:after {
    border-color: transparent #26ae61 #26ae61 transparent
}

.header-style2.scrollHeader .navbar-nav li.current>a,
.header-style2.scrollHeader .navbar-nav li.active>a {
    color: #26ae61
}

.header-style2.scrollHeader .navbar-nav li.current>a:hover,
.header-style2.scrollHeader .navbar-nav li.active>a:hover {
    color: #26ae61
}

.header-style2.scrollHeader .navbar>ul>li.current>a:after {
    border-color: transparent #26ae61 #26ae61 transparent
}

.header-style2 .navbar ul ul li.active>a {
    color: #26ae61
}

.banner-headline {
    font-size: 3rem;
    line-height: 1.2
}

.banner-headline.medium {
    font-size: 1.6rem
}

.banner-words-wrapper {
    display: inline-block;
    position: relative;
    text-align: left
}

.banner-words-wrapper b {
    display: inline-block;
    position: absolute;
    white-space: nowrap;
    left: 0;
    top: 0
}

.banner-words-wrapper b.is-visible {
    position: relative
}

.no-js .banner-words-wrapper b {
    opacity: 0
}

.no-js .banner-words-wrapper b.is-visible {
    opacity: 1
}

@media only screen and (min-width: 768px) {
    .banner-headline {
        font-size: 4.4rem;
        font-weight: 300
    }
}

.banner-headline.clip span {
    display: inline-block;
    padding: .2em 0
}

.caption .highlight {
    color: #26ae61
}

.banner-headline.clip .banner-words-wrapper {
    overflow: hidden;
    vertical-align: top
}

.banner-headline.clip .banner-words-wrapper:after {
    content: '';
    position: absolute;
    top: 10%;
    right: 0;
    width: 2px;
    height: 70%;
    background-color: rgba(255, 255, 255, 0.65)
}

.banner-headline.clip b {
    opacity: 0
}

.banner-headline b.is-visible {
    opacity: 1
}

.banner1 .caption h1 {
    font-size: 50px;
    font-weight: 600;
    line-height: 1;
    color: #ffffff;
    margin-bottom: 20px;
    text-transform: uppercase
}

.banner1 .caption p {
    font-size: 22px;
    color: #ffffff;
    opacity: .9;
    margin-bottom: 40px
}

.banner1 .job-search-wrapper {
    background: #ffffff;
    margin: 0;
    padding: 30px;
    border-radius: 10px;
    display: block;
    margin-bottom: 40px
}

.banner1 .job-search-wrapper input[type=text] {
    height: 55px;
    padding: 12px 20px;
    border-radius: 10px;
    width: 100%;
    border: 1px solid #ced4da;
    background-color: transparent
}

.banner1 .job-search-wrapper input:focus {
    box-shadow: none;
    border-color: #26ae61
}

.banner1 .job-search-button i {
    margin-right: 15px;
    font-size: 20px;
    vertical-align: middle
}

.banner1 .job-search-button a {
    height: 55px;
    padding: 12px 20px !important;
    border-radius: 10px;
    width: 100%;
    display: inline-block;
    transition: .3s;
    line-height: 30px
}

.banner1 .search-listing {
    padding: 0;
    margin: 0;
    list-style: none
}

.banner1 .search-listing li {
    position: relative;
    display: inline-block;
    padding: 0 30px
}

.banner1 .search-listing li:after {
    position: absolute;
    top: 15%;
    left: 100%;
    width: 1px;
    height: 15px;
    background-color: rgba(255, 255, 255, 0.6);
    content: ""
}

.banner1 .search-listing li:first-child {
    padding: 0
}

.banner1 .search-listing li:first-child:after {
    content: none
}

.banner1 .search-listing li:last-child {
    padding-right: 0
}

.banner1 .search-listing li:last-child:after {
    content: none
}

.banner1 .nice-select {
    height: 55px;
    padding: 12px 20px;
    border-radius: 10px;
    width: 100%;
    border: 1px solid #ced4da;
    background-color: transparent;
    line-height: 30px
}

.banner1 .nice-select:after {
    height: 10px;
    margin-top: -9px;
    right: 17px;
    width: 10px
}

.banner1 .nice-select:focus {
    box-shadow: none;
    border-color: #26ae61
}

.banner1 .nice-select .list {
    width: 100%
}

@media screen and (max-width: 1199px) {
    .banner1 .job-search-button a {
        padding: 12px 10px !important
    }
    .banner1 .job-search-button i {
        margin-right: 10px
    }
}

@media screen and (max-width: 992px) {
    .banner1 .caption h1 {
        font-size: 43px
    }
    .banner1 .job-search-button a {
        padding: 17px 12px !important;
        line-height: 20px
    }
}

@media screen and (max-width: 991px) {
    .banner1 .caption h1 {
        font-size: 34px
    }
    .banner1 .caption p {
        font-size: 18px
    }
}

@media screen and (max-width: 767px) {
    .banner1 .caption h1 {
        font-size: 28px;
        margin-bottom: 15px
    }
    .banner1 .caption p {
        margin-bottom: 20px
    }
}

@media screen and (max-width: 575px) {
    .banner1 .caption h1 {
        font-size: 24px
    }
    .banner1 .caption p {
        margin-bottom: 20px
    }
}

.banner2 {
    position: relative;
    display: block;
    padding: 0 55px 0
}

.banner2 .inner-column .banner-title h1 {
    font-size: 50px
}

.banner5 h1,
.banner3 .banner-title h1 {
    font-size: 50px
}

.banner2:before {
    border-radius: 0px 10px 10px 0px;
    left: 50%;
    width: 500px;
    position: absolute;
    top: 0;
    height: 100%;
    background: rgba(38, 174, 97, 0.1);
    background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
    content: "";
    z-index: 1
}

.banner2:after {
    position: absolute;
    left: 0;
    width: 50%;
    top: 0;
    height: 100%;
    background: rgba(38, 174, 97, 0.1);
    background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
    content: "";
    z-index: 1
}

.banner2 .content-column {
    position: relative;
    z-index: 9
}

.banner2 .content-column .inner-column {
    position: relative;
    padding: 185px 0 150px
}

.banner2 .image-column {
    position: relative
}

.banner2 .image-column .image-box {
    padding-left: 60px;
    display: block;
    padding-top: 67px;
    margin-right: -260px;
    padding-bottom: 67px;
    position: relative;
    z-index: 9
}

.banner2 .banner-image-text {
    position: absolute;
    padding: 20px;
    box-shadow: 0 10px 25px rgba(60, 72, 88, 0.15);
    top: 13%;
    background-color: #fff;
    border-radius: 5px;
    left: 2%
}

.banner2 .banner-image-text.bottom-text {
    bottom: 10%;
    top: inherit;
    left: 30%
}

.banner2 .job-search-form {
    background: #ffffff;
    margin: 0;
    border-radius: 5px;
    display: block;
    margin-bottom: 40px;
    border: 1px solid #ededed
}

.users-list li {
    display: inline-flex;
    white-space: nowrap
}

.users-list li img {
    border: 2px solid #fff;
    box-shadow: 0 2px 10px 0 rgba(107, 111, 130, 0.3);
    border-radius: 50%;
    width: 45px;
    height: 45px;
    z-index: 1
}

.users-list li+li {
    margin-left: -10px
}

.banner2 .job-search-form form {
    background: #ffffff;
    padding: 20px;
    border-radius: 5px
}

.banner2 .job-search-form input[type=text] {
    height: 55px;
    padding: 12px 20px;
    border-radius: 5px;
    width: 100%;
    border: 1px solid #ced4da;
    background-color: transparent
}

.banner2 .job-search-form input:focus {
    box-shadow: none;
    border-color: #26ae61
}

.banner2 .job-search-form button {
    height: 55px;
    padding: 12px 20px;
    border-radius: 5px;
    width: 100%;
    display: inline-block;
    transition: .3s;
    line-height: 30px
}

.banner2 .job-search-form button i {
    margin-right: 15px;
    font-size: 20px;
    vertical-align: middle
}

@media screen and (max-width: 1200px) {
    .banner2 .inner-column .banner-title h1,
    .banner5 h1,
    .banner3 .banner-title h1 {
        font-size: 47px
    }
}

@media screen and (max-width: 1199px) {
    .banner2 .image-column .image-box {
        padding-left: 0
    }
    .banner2 .inner-column .banner-title h1 {
        font-size: 40px
    }
    .banner5 h1,
    .banner3 .banner-title h1 {
        font-size: 40px
    }
}

@media screen and (max-width: 992px) {
    .banner2 .job-search-form button {
        padding: 12px 10px
    }
}

@media screen and (max-width: 991px) {
    .banner2 .image-column .image-box {
        margin-right: 0;
        padding-bottom: 125px
    }
    .banner2 .content-column .inner-column {
        padding: 75px 0 0
    }
    .banner2 .image-column .image-box {
        padding-top: 30px
    }
}

@media screen and (max-width: 767px) {
    .banner2 .inner-column .banner-title h1,
    .banner5 h1,
    .banner3 .banner-title h1 {
        font-size: 34px
    }
    .banner2 {
        padding: 0
    }
    .banner2 .job-search-form {
        margin-bottom: 20px
    }
    .banner2 .image-column .image-box {
        padding-top: 35px;
        padding-bottom: 85px
    }
    .banner2 .content-column .inner-column {
        padding: 85px 0 0
    }
}

@media screen and (max-width: 575px) {
    .banner2 .content-column .inner-column {
        padding: 55px 0 0
    }
    .banner2 .image-column .image-box {
        padding-bottom: 55px
    }
    .banner2 .inner-column .banner-title h1 {
        font-size: 26px
    }
    .banner5 h1,
    .banner3 .banner-title h1 {
        font-size: 26px
    }
}

.banner-searches li {
    display: inline-block;
    margin-right: 15px;
    margin-bottom: 5px
}

.banner-searches li:last-child {
    margin-right: 0
}

.banner-searches li h6 {
    margin-bottom: 0
}

.banner-searches li h6 a {
    background-color: rgba(255, 255, 255, 0.2);
    padding: 4px 15px;
    font-size: 14px;
    font-weight: 400;
    border-radius: 20px;
    color: #fff
}

.banner-searches li h6 a:hover,
.banner-searches li h6 a:active,
.banner-searches li h6 a:focus {
    background: #26ae61
}

.banner-4-form .butn {
    position: absolute;
    right: 10px;
    top: 10px;
    border-radius: 25px !important;
    z-index: 9
}

.banner-4-form .form-control {
    height: 65px;
    border-radius: 30px !important;
    padding-left: 28px;
    border: none
}

@media screen and (max-width: 767px) {
    .banner-4-form .form-control {
        height: 58px
    }
}

.banner-05 .nice-select {
    height: 55px;
    padding: 12px 20px;
    border-radius: 10px;
    width: 100%;
    border: 1px solid #ced4da;
    background-color: transparent;
    line-height: 30px
}

.banner-05 .nice-select:after {
    height: 10px;
    margin-top: -9px;
    right: 17px;
    width: 10px
}

.banner-05 .nice-select:focus {
    box-shadow: none;
    border-color: #26ae61
}

.banner-05 .nice-select .list {
    width: 100%
}

.banner-05 .form-control {
    height: 56px
}

@media screen and (max-width: 767px) {
    .banner-05 .form-control {
        height: 50px
    }
}

.section-heading {
    margin-bottom: 50px;
    text-align: center
}

.section-heading h1,
.section-heading h2,
.section-heading h3,
.section-heading h4,
.section-heading h5,
.section-heading h6 {
    position: relative;
    line-height: 45px;
    width: 50%;
    font-size: 30px;
    margin: 0 auto 5px;
    font-weight: 600;
    text-transform: capitalize
}

.section-heading p {
    font-weight: 400;
    margin-bottom: 0;
    color: #6c757d
}

@media screen and (max-width: 1199px) {
    .section-heading h1,
    .section-heading h2,
    .section-heading h3,
    .section-heading h4,
    .section-heading h5,
    .section-heading h6 {
        width: 60%
    }
}

@media screen and (max-width: 991px) {
    .section-heading {
        margin-bottom: 40px
    }
    .section-heading h1,
    .section-heading h2,
    .section-heading h3,
    .section-heading h4,
    .section-heading h5,
    .section-heading h6 {
        font-size: 28px;
        line-height: 40px;
        width: 70%
    }
}

@media screen and (max-width: 767px) {
    .section-heading {
        margin-bottom: 30px
    }
    .section-heading h1,
    .section-heading h2,
    .section-heading h3,
    .section-heading h4,
    .section-heading h5,
    .section-heading h6 {
        font-size: 26px;
        width: 90%
    }
}

@media screen and (max-width: 575px) {
    .section-heading h1,
    .section-heading h2,
    .section-heading h3,
    .section-heading h4,
    .section-heading h5,
    .section-heading h6 {
        width: 100%
    }
}

.section-heading2 {
    margin-bottom: 50px;
    text-align: center
}

.section-heading2 h1,
.section-heading2 h2,
.section-heading2 h3,
.section-heading2 h4,
.section-heading2 h5,
.section-heading2 h6 {
    position: relative;
    font-weight: 500;
    margin-bottom: 0;
    position: relative;
    line-height: 45px;
    font-size: 30px;
    width: 50%;
    text-transform: capitalize;
    margin: 0 auto
}

.section-heading2 .heading-seprator {
    width: 2px;
    height: 20px;
    background: #fe9703;
    margin: 10px auto;
    opacity: .5
}

.section-heading2 span {
    position: relative;
    font-size: 16px;
    font-weight: 600;
    text-transform: capitalize;
    display: inline-block;
    color: #26ae61;
    margin-bottom: 10px
}

@media screen and (max-width: 1199px) {
    .section-heading2 h1,
    .section-heading2 h2,
    .section-heading2 h3,
    .section-heading2 h4,
    .section-heading2 h5,
    .section-heading2 h6 {
        width: 60%
    }
}

@media screen and (max-width: 991px) {
    .section-heading2 {
        margin-bottom: 40px
    }
    .section-heading2 h1,
    .section-heading2 h2,
    .section-heading2 h3,
    .section-heading2 h4,
    .section-heading2 h5,
    .section-heading2 h6 {
        font-size: 28px;
        line-height: 40px;
        width: 70%
    }
}

@media screen and (max-width: 767px) {
    .section-heading2 {
        margin-bottom: 30px
    }
    .section-heading2 h1,
    .section-heading2 h2,
    .section-heading2 h3,
    .section-heading2 h4,
    .section-heading2 h5,
    .section-heading2 h6 {
        font-size: 26px;
        width: 90%
    }
}

@media screen and (max-width: 575px) {
    .section-heading2 span {
        font-size: 15px;
        margin-bottom: 5px
    }
    .section-heading2 h1,
    .section-heading2 h2,
    .section-heading2 h3,
    .section-heading2 h4,
    .section-heading2 h5,
    .section-heading2 h6 {
        width: 100%
    }
}

.section-heading3 {
    margin-bottom: 50px;
    text-align: center
}

.section-heading3 h1,
.section-heading3 h2,
.section-heading3 h3,
.section-heading3 h4,
.section-heading3 h5,
.section-heading3 h6 {
    position: relative;
    font-weight: 700;
    text-transform: uppercase;
    position: relative;
    line-height: 30px;
    font-size: 30px;
    width: 50%;
    margin: 0 auto 15px
}

.section-heading3 p {
    margin-bottom: 0;
    width: 50%;
    margin: 0 auto;
    font-size: 18px
}

@media screen and (max-width: 1199px) {
    .section-heading3 h1,
    .section-heading3 h2,
    .section-heading3 h3,
    .section-heading3 h4,
    .section-heading3 h5,
    .section-heading3 h6 {
        width: 60%
    }
    .section-heading3 p {
        width: 70%
    }
}

@media screen and (max-width: 991px) {
    .section-heading3 {
        margin-bottom: 40px
    }
    .section-heading3 h1,
    .section-heading3 h2,
    .section-heading3 h3,
    .section-heading3 h4,
    .section-heading3 h5,
    .section-heading3 h6 {
        font-size: 28px;
        width: 70%
    }
    .section-heading3 p {
        width: 90%
    }
}

@media screen and (max-width: 767px) {
    .section-heading3 {
        margin-bottom: 30px
    }
    .section-heading3 h1,
    .section-heading3 h2,
    .section-heading3 h3,
    .section-heading3 h4,
    .section-heading3 h5,
    .section-heading3 h6 {
        font-size: 26px;
        margin: 0 auto 10px;
        width: 90%
    }
    .section-heading3 p {
        width: 100%;
        font-size: 16px
    }
}

@media screen and (max-width: 575px) {
    .section-heading3 h1,
    .section-heading3 h2,
    .section-heading3 h3,
    .section-heading3 h4,
    .section-heading3 h5,
    .section-heading3 h6 {
        width: 100%
    }
}

.section-heading4 {
    margin-bottom: 50px;
    text-align: center
}

.section-heading4 h1,
.section-heading4 h2,
.section-heading4 h3,
.section-heading4 h4,
.section-heading4 h5,
.section-heading4 h6 {
    position: relative;
    font-weight: 600;
    margin-bottom: 0;
    position: relative;
    line-height: 30px;
    font-size: 30px;
    width: 50%;
    margin: 0 auto
}

.section-heading4 span {
    position: relative;
    font-size: 13px;
    padding: 5px 15px;
    background: rgba(38, 174, 97, 0.1);
    color: #27ae60;
    font-weight: 600;
    border-radius: 10rem;
    margin-bottom: 15px;
    text-transform: uppercase;
    display: inline-block
}

@media screen and (max-width: 1199px) {
    .section-heading4 h1,
    .section-heading4 h2,
    .section-heading4 h3,
    .section-heading4 h4,
    .section-heading4 h5,
    .section-heading4 h6 {
        width: 60%
    }
}

@media screen and (max-width: 991px) {
    .section-heading4 {
        margin-bottom: 40px
    }
    .section-heading4 h1,
    .section-heading4 h2,
    .section-heading4 h3,
    .section-heading4 h4,
    .section-heading4 h5,
    .section-heading4 h6 {
        font-size: 28px;
        width: 70%
    }
}

@media screen and (max-width: 767px) {
    .section-heading4 {
        margin-bottom: 30px
    }
    .section-heading4 h1,
    .section-heading4 h2,
    .section-heading4 h3,
    .section-heading4 h4,
    .section-heading4 h5,
    .section-heading4 h6 {
        font-size: 26px;
        width: 90%
    }
}

@media screen and (max-width: 575px) {
    .section-heading4 h1,
    .section-heading4 h2,
    .section-heading4 h3,
    .section-heading4 h4,
    .section-heading4 h5,
    .section-heading4 h6 {
        width: 100%
    }
}

.page-title-section {
    background: rgba(38, 174, 97, 0.1);
    padding: 100px 0 100px 0
}

.page-title-section h1 {
    font-weight: bold
}

.page-title-section.style2 {
    padding: 120px 0
}

.page-title-section .breadcrumb .breadcrumb-item a {
    font-weight: 600
}

.page-title-section .page-title-list {
    padding: 12px;
    border-radius: 10px;
    background: #ffffff;
    max-width: 340px;
    margin: 0 auto;
    box-shadow: 0 0px 14px 0 rgba(0, 0, 0, 0.08)
}

@media screen and (max-width: 1199px) {
    .page-title-section {
        padding: 80px 0 80px 0
    }
}

@media screen and (max-width: 991px) {
    .page-title-section {
        padding: 70px 0 70px 0
    }
    .page-title-section.style2 {
        padding: 100px 0
    }
}

@media screen and (max-width: 575px) {
    .page-title-section {
        padding: 60px 0 60px 0
    }
    .page-title-section.style2 {
        padding: 80px 0
    }
}

.card-style1 {
    position: relative;
    background: #ffffff;
    border: 1px solid #ededed;
    border-radius: 8px;
    padding: 40px 20px;
    text-align: center;
    transition: all 300ms ease
}

.card-style1 .card-body {
    padding: 0
}

.card-style1 .card-body .categorie-icon {
    position: relative;
    display: inline-block;
    height: 70px;
    width: 70px;
    border-radius: 10px;
    padding: 15px;
    margin-bottom: 25px
}

.card-style1 .card-body .categorie-icon.light-blue {
    background: #D4F4F8
}

.card-style1 .card-body .categorie-icon.red {
    background: #FEDDD8
}

.card-style1 .card-body .categorie-icon.purple {
    background: #F2E0FE
}

.card-style1 .card-body .categorie-icon.orange {
    background: #FFEEE2
}

.card-style1 .card-body .categorie-icon.green {
    background: #D4EFDF
}

.card-style1 .card-body .categorie-icon.yellow {
    background: #FCF4DB
}

.card-style1 .card-body .categorie-icon.blue {
    background: #DAD9F8
}

.card-style1 .card-body .categorie-icon.cyan {
    background: #D4F4F8
}

.card-style1:hover {
    box-shadow: 0px 6px 15px rgba(64, 79, 104, 0.05)
}

@media screen and (max-width: 767px) {
    .card-style1 {
        padding: 30px 20px
    }
    .card-style1 .card-body .categorie-icon {
        height: 65px;
        width: 65px;
        margin-bottom: 20px
    }
}

.card-style2 {
    position: relative;
    padding: 35px 25px;
    background: #FFFFFF;
    border: 1px solid #ededed;
    border-radius: 10px;
    transition: all 300ms ease
}

.card-style2 .card-body {
    padding: 0
}

.card-style2 .card-body .company-info {
    position: relative;
    font-size: 13px;
    margin-right: 10px;
    padding: 4px 20px;
    border-radius: 50px;
    display: inline-block
}

.card-style2 .card-body .company-info.time {
    background: rgba(25, 103, 210, 0.15);
    color: #1967D2
}

.card-style2 .card-body .company-info.privacy {
    background: rgba(52, 168, 83, 0.15);
    color: #26ae61
}

.card-style2 .card-body .company-info.required {
    background: rgba(249, 171, 0, 0.15);
    color: #F9AB00
}

.card-style2 .card-body .bookmark-btn {
    position: absolute;
    right: 15px;
    top: 20px;
    height: 30px;
    width: 30px;
    text-align: center;
    border-radius: 50%;
    cursor: pointer;
    background: #ffffff;
    transition: all 300ms ease
}

.card-style2 .card-body .bookmark-btn i {
    line-height: 30px;
    font-size: 18px
}

.card-style2 .card-body .bookmark-btn:hover {
    background: #ECEDF2
}

.card-style2:hover {
    box-shadow: 0px 6px 15px rgba(64, 79, 104, 0.05)
}

@media screen and (max-width: 1199px) {
    .card-style2 {
        padding: 30px 25px
    }
}

@media screen and (max-width: 575px) {
    .card-style2 {
        padding: 25px 20px
    }
    .card-style2 .card-body .company-info {
        padding: 4px 14px;
        margin-right: 5px
    }
}

.card-style3 {
    border-radius: 10px;
    background: none;
    cursor: pointer;
    border: 1px solid #ededed
}

.card-style3 .card-body .job-icon {
    position: relative;
    display: inline-block;
    height: 70px;
    width: 70px;
    color: #1967D2;
    border-radius: 10px;
    padding: 15px;
    margin-bottom: 15px;
    transition: all 300ms ease
}

.card-style3 .card-body .job-icon.light-blue {
    background: #D4F4F8
}

.card-style3 .card-body .job-badge {
    position: relative;
    font-size: 13px;
    line-height: 15px;
    padding: 8px 14px;
    border-radius: 50px
}

.card-style3 .card-body .job-badge.red {
    background: rgba(242, 60, 73, 0.1);
    color: #f23c49
}

.card-style3 .card-body .job-badge.purple {
    background: rgba(93, 60, 242, 0.1);
    color: #5d3cf2
}

.card-style3 .card-body .job-favourite {
    display: inline-block;
    position: relative;
    height: 35px;
    width: 35px;
    line-height: 35px;
    border: 1px solid #ededed;
    border-radius: 100%;
    transition: all 0.3s ease-in-out;
    font-size: 13px;
    color: #fd5631;
    text-align: center
}

@media screen and (max-width: 575px) {
    .card-style3 .card-body .job-badge {
        font-size: 12px;
        padding: 6px 10px
    }
}

.card-style4 {
    border: 0;
    border-radius: 0;
    background: none
}

.card-style4 .blogs-image {
    border-radius: 10px;
    overflow: hidden;
    margin-bottom: 20px
}

.card-style4 .blogs-image img {
    transition: all 300ms ease
}

.card-style4:hover .blogs-image img {
    transform: scale(1.1)
}

.card-style4 .card-body {
    padding: 0
}

@media screen and (max-width: 575px) {
    .card-style4 .blogs-image {
        margin-bottom: 10px
    }
}

.card-style5 {
    width: 100%;
    border-radius: 5px;
    background: #333333;
    overflow: hidden;
    transition: all 0.3s ease-in-out;
    position: relative;
    border: 0
}

.card-style5 .categories-img {
    opacity: 0.4;
    border-radius: 5px;
    transition: all 1000ms cubic-bezier(0.215, 0.61, 0.355, 1)
}

.card-style5:hover .categories-img {
    opacity: 0.2;
    transform: scale(1.1)
}

.card-style5 .card-body {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    display: flex;
    flex-wrap: wrap;
    flex-direction: column;
    justify-content: flex-end;
    padding: 20px;
    align-items: flex-start
}

.card-style5 .card-body .job-position {
    position: absolute;
    right: 20px;
    top: 20px;
    background-color: #fe9703;
    padding: 5px 10px;
    border-radius: 5px;
    font-size: 14px;
    color: #ffffff
}

.card-style5 .card-body h4 a:hover {
    color: #26ae61 !important
}

.card-style5 .card-body .categories-icon {
    width: 65px;
    height: 65px;
    background: #26ae61;
    padding: 15px;
    border-radius: 50%
}

.card-style6 {
    border: 1px solid #ededed;
    position: relative;
    overflow: hidden;
    border-radius: 5px
}

.card-style6.radius-10 {
    border-radius: 10px
}

.card-style6 .card-body {
    padding: 0
}

.card-style6 .card-body .company-featured {
    position: absolute;
    right: -20px;
    top: -15px;
    padding: 25px 0 0 10px;
    width: 55px;
    height: 55px;
    background-color: #ffb14a;
    line-height: 1;
    border-radius: 100%;
    color: #ffffff;
    font-size: 15px
}

.card-style6 .card-body .company-info-top {
    background-color: #ffffff;
    padding: 30px 20px 20px 20px;
    text-align: center;
    border-bottom: 1px dashed #ededed
}

.card-style6 .card-body .company-info-bottom {
    background: #fafafa;
    padding: 20px 20px 30px 20px;
    position: relative;
    text-align: center
}

.card-style7 {
    border: 1px solid #ededed;
    padding: 30px 20px;
    border-radius: 5px;
    background-color: #fff;
    text-align: center;
    position: relative
}

.card-style7.radius-10 {
    border-radius: 10px
}

.card-style7 .card-body {
    padding: 0
}

.card-style7 .card-body .price {
    position: absolute;
    left: 25px;
    top: 25px;
    background-color: #26ae61;
    padding: 5px 10px;
    font-size: 14px;
    color: #ffffff;
    border-radius: 5px
}

.card-style7 .card-body .candidate-favourite {
    display: inline-block;
    position: absolute;
    left: 20px;
    top: 20px;
    height: 36px;
    width: 36px;
    line-height: 36px;
    border: 2px solid #ededed;
    border-radius: 100%;
    transition: all 0.3s ease-in-out;
    font-size: 14px;
    color: #969696
}

.card-style7 .card-body .candidate-favourite:hover {
    color: #ffffff;
    background: #e74c3c;
    border: 2px solid #e74c3c
}

.card-style7 .card-body .candidate-info {
    border-bottom: 1px dashed #ededed;
    margin-bottom: 15px;
    padding-bottom: 15px
}

.card-style8 {
    border-radius: 0;
    border: 1px solid #ededed;
    border-radius: 5px;
    box-shadow: 0 0px 14px 0 rgba(0, 0, 0, 0.08)
}

.card-style8 .card-body {
    padding: 30px 20px;
    text-align: center
}

.card-style8 .card-body .category-link i {
    background: rgba(254, 151, 3, 0.1);
    width: 40px;
    height: 40px;
    line-height: 40px;
    font-size: 15px;
    border-radius: 50%;
    color: #fe9703;
    display: inline-block;
    text-align: center;
    transition: all 0.5s;
    font-weight: 600;
    position: relative
}

.card-style8 .card-body .category-link i:hover {
    background: #26ae61;
    color: #ffffff
}

.card-style9 {
    border: 1px solid #ededed;
    border-radius: 5px;
    padding: 20px
}

.card-style9 .blog-image {
    position: relative;
    margin-bottom: 25px
}

.card-style9 .blog-image .date {
    position: absolute;
    content: '';
    padding: 4px 8px;
    background: #27ae60;
    color: #ffffff;
    top: 20px;
    border-radius: 5px;
    z-index: 3;
    left: 20px
}

.card-style9 .card-body {
    padding: 0
}

.card-style10 {
    background: #fff;
    border-radius: 10px;
    overflow: hidden;
    text-align: center;
    position: relative;
    margin: 2px;
    border: 1px solid #ededed
}

.card-style10 .card-body {
    text-align: center;
    padding: 40px 20px 25px
}

.card-style10 .card-body .popular-jobs-box {
    padding: 30px 0 0
}

.card-style10 .card-body .popular-jobs-status {
    position: absolute;
    left: 25px;
    top: 25px;
    color: #fe9703;
    text-transform: capitalize;
    padding: 5px 20px;
    border-radius: 10px;
    font-weight: 600;
    background: rgba(254, 151, 3, 0.1);
    font-size: 15px
}

.card-style10 .card-body .favourite {
    display: inline-block;
    position: absolute;
    right: 25px;
    top: 25px;
    height: 40px;
    width: 40px;
    line-height: 40px;
    border: 1px solid #eeeeee;
    border-radius: 100%;
    transition: all 0.3s ease-in-out;
    font-size: 14px;
    color: #969696
}

.card-style10 .card-body .favourite:hover {
    color: #ffffff;
    background: #e74c3c;
    border: 1px solid #e74c3c
}

.card-style10 .butn.butn-apply {
    padding: 15px;
    display: inline-block;
    width: 100%;
    font-size: 16px;
    font-weight: 500;
    border-radius: 0
}

.card-style11 {
    position: relative;
    border: 1px solid #ededed;
    border-radius: 10px;
    padding: 25px;
    transition-duration: .6s;
    background: #ffffff;
    width: 100%;
    height: 100%
}

.card-style11 .card-body {
    padding: 0
}

.card-style11 .card-body .categories-icon {
    width: 75px;
    height: 75px;
    background: rgba(38, 174, 97, 0.1);
    padding: 15px;
    border-radius: 10px
}

.card-style11 .card-body .hover-icon {
    display: none
}

.card-style11 .card-body span {
    position: absolute;
    right: 5px;
    bottom: 5px;
    font-size: 70px;
    font-weight: 700;
    color: #999;
    opacity: 0.07;
    line-height: 1
}

.card-style11:hover {
    box-shadow: 0px 0px 34px 4px rgba(33, 37, 41, 0.06);
    border-color: transparent
}

.card-style11:hover .categories-icon {
    display: none
}

.card-style11:hover .hover-icon {
    display: block;
    background: #26ae61;
    width: 75px;
    height: 75px;
    padding: 15px;
    border-radius: 10px;
    transition-duration: .6s
}

@media screen and (max-width: 1199px) {
    .card-style11 {
        padding: 20px
    }
    .card-style11 .card-body .categories-icon,
    .card-style11:hover .hover-icon {
        width: 65px;
        height: 65px;
        padding: 12px
    }
    .card-style11 .card-body span {
        font-size: 45px
    }
}

.card-style12 {
    position: relative;
    display: block;
    border: 0
}

.card-style12:before {
    position: absolute;
    top: 0;
    left: 0;
    height: 100%;
    width: 100%;
    content: "";
    border-radius: 10px;
    transition: all 500ms ease
}

.card-style12 .location-title {
    position: absolute;
    bottom: 0;
    left: 0;
    right: 0;
    opacity: 1;
    visibility: visible;
    align-items: center;
    margin-bottom: 0;
    background-color: #26ae61;
    color: #fff;
    text-align: center;
    font-size: 18px;
    font-weight: 500;
    padding: 10px;
    z-index: 1;
    display: flex;
    justify-content: center;
    transition: all 0.6s ease 0s;
    border-bottom-right-radius: 10px;
    border-bottom-left-radius: 10px
}

.card-style12:hover .location-title {
    opacity: 0;
    visibility: hidden
}

.card-style12 .card-body {
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    text-align: center;
    transform: scaleX(0);
    transition: all 0.6s ease 0s
}

.card-style12:hover .card-body {
    transform: scaleX(1)
}

.card-style12:hover:before {
    background: rgba(22, 28, 38, 0.7)
}

.card-style12 .card-body .job-position a {
    font-size: 13px;
    color: #ffffff;
    font-weight: 600;
    background: #fe9703;
    display: inline-block;
    padding: 0 20px;
    line-height: 30px;
    border-radius: 10px;
    transition: all 500ms ease
}

.card-style13 {
    border-radius: 0;
    border: 2px dotted #ededed;
    padding: 25px;
    text-align: center;
    width: 100%;
    height: 100%
}

.card-style13 .card-body {
    padding: 0
}

.card-style13 .card-body .categories-icon {
    width: 70px;
    height: 70px;
    background: #26ae61;
    padding: 15px;
    border-radius: 50%
}

.card-style13 .categories-info {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-top: 20px;
    padding-top: 20px;
    border-top: 2px dotted #ededed
}

.card-style13 .categorie-link i {
    border: 2px solid #ededed;
    width: 35px;
    height: 35px;
    font-size: 14px;
    line-height: 32px;
    border-radius: 50%
}

.card-style13 .categorie-link i:hover {
    background: #26ae61;
    border: 2px solid #26ae61;
    color: #ffffff
}

@media screen and (max-width: 991px) {
    .card-style13 .card-body .categories-icon {
        width: 60px;
        height: 60px
    }
}

.card-style14 {
    border-radius: 0;
    border: 0
}

.card-style14 .card-body {
    border: 2px dotted #ededed;
    border-top: 0;
    padding: 30px
}

.card-style14 .card-body .dates {
    padding: 5px 10px;
    background: rgba(254, 151, 3, 0.15);
    color: #fe9703;
    display: inline-block;
    font-size: 14px;
    font-weight: 600;
    margin-bottom: 15px
}

.card-style14 .card-footer {
    background: none;
    border-top: 2px dotted #ededed;
    padding: 15px 0 0 0;
    display: flex;
    justify-content: space-between;
    align-items: center
}

@media screen and (max-width: 767px) {
    .card-style14 .card-body {
        padding: 20px
    }
}

.card-style15 {
    border: 0
}

.card-style15 .card-body {
    position: relative;
    background: #ffffff;
    padding: 30px;
    border: 1px solid #ededed;
    z-index: 1;
    border-bottom-right-radius: 10px;
    border-bottom-left-radius: 10px
}

.card-style15 .card-body .blog-meta {
    list-style: none;
    margin: 0 0 20px;
    position: relative;
    padding: 0 0 15px 0
}

.card-style15 .card-body .blog-meta li {
    display: inline-block;
    font-size: 16px
}

.card-style15 .card-body .blog-meta li:after {
    content: '|';
    margin: 0 15px;
    top: 0;
    color: #e0e0e0;
    height: auto;
    width: auto
}

.card-style15 .card-body .blog-meta li.last:after {
    content: none
}

.card-style15 .card-body .blog-meta:before {
    background: #ededed;
    bottom: -1px;
    content: "";
    height: 1px;
    left: 0;
    position: absolute;
    width: 100%
}

.card-style15 .card-body blockquote {
    position: relative;
    display: block;
    background: #fafafa;
    padding: 35px 35px 35px 110px;
    border: 1px solid #ededed;
    margin: 30px 0px;
    font-style: italic;
    color: #282b2d;
    border-radius: 10px
}

.card-style15 .card-body blockquote .quote-box {
    position: absolute;
    left: 30px;
    top: 50px;
    width: 50px;
    height: 50px;
    line-height: 52px;
    font-size: 25px;
    color: #ffffff;
    text-align: center;
    background: #26ae61;
    border-radius: 50%
}

.card-style15 .card-body .separator {
    margin-top: 20px;
    padding-top: 20px;
    border-top: 1px dashed #ddd;
    text-align: left
}

.card-style15 .card-body .blog-tags {
    margin: 0;
    padding: 0
}

.card-style15 .card-body .blog-tags li {
    display: inline-block
}

.card-style15 .card-body .blog-tags li a {
    font-size: 14px;
    font-weight: 500;
    padding: 8px 12px;
    margin: 5px 5px 5px 0;
    border-radius: 10px;
    display: inline-block;
    border: 1px solid #ededed
}

.card-style15 .card-body .blog-tags li a:hover {
    background: #fb9a27;
    color: #ffffff !important;
    border: 1px solid #fb9a27
}

.card-style15 .card-body .social-icon {
    text-align: right;
    margin: 0;
    padding: 0
}

.card-style15 .card-body .author-post-info {
    padding: 30px;
    border: 1px solid #ededed;
    background: #ffffff;
    position: relative;
    border-radius: 10px
}

.card-style15 .card-body .author-post {
    padding: 0;
    margin: 0
}

.card-style15 .card-body .author-post li {
    display: inline-block;
    margin: 0 10px;
    font-size: 16px
}

.card-style15 .card-body .author-post li:first-child {
    margin-left: 0
}

.card-style15 .card-body .author-post li:last-child {
    margin-right: 0
}

@media screen and (max-width: 767px) {
    .card-style15 .card-body {
        padding: 25px
    }
    .card-style15 .card-body .social-icon {
        text-align: left
    }
    .card-style15 .card-body .author-info-content {
        padding: 0 25px 25px
    }
    .card-style15 .card-body .author-post-info {
        padding: 25px
    }
    .card-style15 .card-body blockquote {
        padding: 30px 30px 30px 110px
    }
}

@media screen and (max-width: 575px) {
    .card-style15 .card-body blockquote {
        padding: 25px;
        margin: 25px 0px;
        text-align: center
    }
    .card-style15 .card-body blockquote .quote-box {
        position: relative;
        left: 0;
        top: 0;
        margin: 0 auto 15px
    }
}

.card-style16 {
    border: 0;
    text-align: center
}

.card-style16 .card-body {
    border: 1px solid #ededed;
    padding: 30px 25px;
    border-radius: 10px
}

.card-style16 .card-body .seprator {
    position: relative
}

.card-style16 .card-body .seprator:after {
    border-bottom: 2px solid #26ae61;
    content: "";
    display: block;
    text-align: center;
    width: 10%;
    margin: 20px auto
}

.card-style16:hover .card-body {
    box-shadow: 0px 6px 15px rgba(64, 79, 104, 0.05)
}

@media screen and (max-width: 767px) {
    .card-style16 .card-body {
        padding: 25px 20px
    }
}

.company-style-01 .company-opening {
    position: relative;
    font-size: 15px;
    padding: 5px 20px;
    border-radius: 5px;
    display: inline-block;
    margin-right: 5px;
    background: rgba(38, 174, 97, 0.12);
    color: #26ae61
}

.company-style-01 .company-follow {
    position: relative;
    font-size: 15px;
    padding: 5px 20px;
    border-radius: 5px;
    display: inline-block;
    background: rgba(254, 151, 3, 0.1);
    color: #fe9703
}

.company-style-02 .featured-lable {
    background-color: rgba(254, 151, 3, 0.1);
    float: right;
    position: absolute;
    transform: rotate(315deg);
    left: -75px;
    top: 10px;
    text-align: center;
    width: 200px;
    font-size: 12px;
    margin: 0;
    z-index: 1;
    color: #fe9703;
    font-weight: 700;
    line-height: 28px
}

.company-style-03 {
    border: 2px dotted #ededed;
    text-align: center;
    padding: 25px 20px 20px 20px;
    margin-bottom: 20px;
    background: #ffffff
}

.company-style-03 .featured-lable {
    background-color: rgba(254, 151, 3, 0.1);
    float: right;
    position: absolute;
    transform: rotate(315deg);
    left: -75px;
    top: 10px;
    text-align: center;
    width: 200px;
    font-size: 13px;
    margin: 0;
    z-index: 1;
    color: #fe9703;
    font-weight: 600;
    line-height: 28px
}

.company-style-03 .job-position {
    display: inline-block;
    margin: 0px 0px -45px;
    overflow: hidden;
    background-color: #26ae61;
    padding: 8px 16px;
    color: #fff;
    border-radius: 3px;
    font-size: 14px
}

.company-style-03 .seprator {
    position: relative
}

.company-style-03 .seprator:after {
    border-bottom: 2px solid #26ae61;
    content: "";
    display: block;
    text-align: center;
    width: 15%;
    margin: 20px auto
}

.recent-job-style1 .job-type {
    position: absolute;
    left: 20px;
    top: 20px;
    background-color: #fe9703;
    padding: 5px 10px;
    border-radius: 5px;
    font-size: 14px;
    color: #ffffff
}

.recent-job-style2 .job-company-logo {
    width: 80px;
    height: 80px;
    text-align: center;
    border: 1px solid #ededed;
    padding: 15px;
    border-radius: 5px;
    background: #ffffff
}

.recent-job-style2 .job-company-logo.radius-10 {
    border-radius: 10px
}

.recent-job-style2 .butn {
    max-width: 110px;
    width: 100%;
    text-align: center
}

.recent-job-style2 .company-info {
    position: relative;
    font-size: 14px;
    padding: 5px 15px;
    border-radius: 5px;
    display: inline-block;
    background: rgba(38, 174, 97, 0.12);
    color: #26ae61
}

.recent-job-style2 .company-info.radius-10 {
    border-radius: 10px
}

.recent-job-style2 .job-favourite {
    display: inline-block;
    position: relative;
    height: 40px;
    width: 40px;
    line-height: 40px;
    border: 2px solid #eeeeee;
    border-radius: 100%;
    transition: all 0.3s ease-in-out;
    font-size: 14px;
    color: #969696
}

.recent-job-style2 .job-favourite:hover {
    color: #ffffff;
    background: #e74c3c;
    border: 2px solid #e74c3c
}

@media screen and (max-width: 991px) {
    .recent-job-style2 .job-company-logo {
        margin: 0 auto 25px
    }
    .recent-job-style2 .job-favourite {
        height: 35px;
        width: 35px;
        line-height: 34px
    }
}

@media screen and (max-width: 575px) {
    .recent-job-style2 .job-company-logo {
        width: 75px;
        height: 75px;
        margin: 0 auto 20px;
        padding: 10px
    }
    .recent-job-style2 .company-info {
        margin-top: 8px
    }
}

.testimonial2-carousel .testimonial-wrapper {
    position: relative;
    padding: 30px;
    background: #ffffff;
    border: 1px solid #ededed;
    border-radius: 5px
}

.testimonial2-carousel .testimonial-wrapper .testimonial-icon {
    margin-bottom: 20px
}

.testimonial2-carousel .testimonial-wrapper .testimonial-icon i {
    width: 35px;
    height: 35px;
    line-height: 35px;
    background: #26ae61;
    color: #ffffff;
    border-radius: 50%;
    padding: 10px;
    font-size: 24px
}

.testimonial2-carousel .testimonial-wrapper .testimonial-box {
    position: relative;
    background: #fafafa;
    padding: 20px;
    border-radius: 5px;
    border: 1px solid #ededed
}

.testimonial2-carousel .designation {
    position: relative;
    display: inline-block;
    font-weight: 500;
    color: #fe9703;
    font-size: 16px;
    text-transform: capitalize;
    padding-left: 45px
}

.testimonial2-carousel .designation:before {
    content: '';
    position: absolute;
    left: 0;
    top: 50%;
    transform: translateY(-50%);
    width: 30px;
    height: 2px;
    background-color: #fe9703
}

@media screen and (max-width: 991px) {
    .testimonial2-carousel .testimonial-wrapper {
        padding: 25px
    }
    .testimonial2-carousel .designation {
        padding-left: 26px
    }
    .testimonial2-carousel .designation:before {
        width: 15px
    }
}

@media screen and (max-width: 575px) {
    .testimonial2-carousel .testimonial-wrapper {
        text-align: center
    }
    .testimonial2-carousel .testimonial-wrapper .testimonial-icon i {
        width: 30px;
        height: 30px;
        line-height: 30px;
        font-size: 22px
    }
}

.testimonial3-carousel .testimonial-blocks {
    text-align: center
}

.testimonial3-carousel .testimonial-blocks:before {
    position: absolute;
    content: '';
    left: 0px;
    top: 40px;
    right: 0px;
    bottom: 0px;
    background-color: #ffffff;
    border: 1px solid #ededed;
    border-radius: 5px
}

.testimonial3-carousel .testimonial-blocks .quote-icon {
    position: absolute;
    left: -15px;
    top: 25px;
    color: #ffffff;
    width: 30px;
    height: 30px;
    line-height: 30px;
    border-radius: 50px;
    display: inline-block;
    background-color: #26ae61
}

.testimonial3-carousel .testimonial-blocks .quote-icon:before {
    content: '\f10d';
    font-family: Font Awesome\ 5 Free;
    font-weight: 600;
    font-size: 14px
}

@media screen and (max-width: 991px) {
    .testimonial3-carousel .testimonial-block .quote-icon {
        left: -15px;
        top: 25px;
        width: 30px;
        height: 30px;
        line-height: 30px
    }
}

@media screen and (max-width: 767px) {
    .testimonial3-carousel .testimonial-block .quote-icon:before {
        font-size: 12px
    }
}

.testimonial4-carousel .testimonial-wrapper {
    border-radius: 10px;
    background: #fff;
    border: 1px solid #ededed;
    padding: 30px 25px
}

.testimonial4-carousel .testimonial-wrapper p:after {
    border-bottom: 2px solid #27ae60;
    padding-bottom: 20px;
    margin-bottom: 20px;
    content: "";
    display: block;
    text-align: center;
    width: 10%
}

.testimonial4-carousel .testimonial-wrapper .testimonial-img {
    position: relative;
    z-index: 1;
    width: 100%
}

.testimonial4-carousel .testimonial-wrapper .testimonial-img i {
    position: absolute;
    left: 0;
    bottom: 0;
    height: 45px;
    width: 45px;
    line-height: 45px;
    background-color: #fe9703;
    color: #fff;
    font-size: 20px;
    display: flex;
    align-items: center;
    justify-content: center;
    border-bottom-left-radius: 10px
}

@media screen and (max-width: 991px) {
    .testimonial4-carousel .testimonial-wrapper .testimonial-img i {
        height: 50px;
        width: 50px;
        line-height: 50px;
        font-size: 22px
    }
}

@media screen and (max-width: 767px) {
    .testimonial4-carousel .testimonial-wrapper .testimonial-img i {
        height: 45px;
        width: 45px;
        line-height: 45px;
        font-size: 20px
    }
}

@media screen and (max-width: 575px) {
    .testimonial4-carousel .testimonial-wrapper {
        padding: 25px 20px
    }
    .testimonial4-carousel .testimonial-wrapper .testimonial-img {
        width: 150px;
        margin: 0 auto
    }
    .testimonial4-carousel .testimonial-wrapper .testimonial-img i {
        height: 40px;
        width: 40px;
        line-height: 40px;
        font-size: 18px
    }
    .testimonial4-carousel .testimonial-wrapper p:after {
        margin: 0 auto
    }
}

.testimonial5-carousel .testimonial-boxs {
    z-index: 4;
    text-align: center;
    position: relative;
    padding: 25px 20px;
    background: #fff;
    display: inline-block;
    border: 2px dotted #ededed
}

.testimonial5-carousel .testimonial-boxs::before {
    position: absolute;
    left: 0;
    top: 0;
    content: "";
    width: 100%;
    z-index: -1;
    height: 75px;
    background: #f8f9fa
}

.testimonial5-carousel .testimonial-boxs .author-image {
    overflow: hidden;
    margin-bottom: 20px
}

.testimonial5-carousel .testimonial-boxs .author-image .quote-icon {
    position: absolute;
    left: 50%;
    transform: translateX(-50%) !important;
    bottom: 5px;
    color: #ffffff;
    width: 30px;
    height: 30px;
    line-height: 30px;
    border-radius: 50%;
    display: inline-block;
    background-color: #fe9703;
    font-size: 14px
}

.testimonial5-carousel .testimonial-boxs .author-image .quote-icon:before {
    content: '\f10d';
    font-family: Font Awesome\ 5 Free;
    font-weight: 600;
    font-size: 14px
}

@media screen and (max-width: 992px) {
    .testimonial5-carousel .testimonial-boxs {
        padding: 25px 14px
    }
}

@media screen and (max-width: 991px) {
    .testimonial5-carousel .testimonial-boxs {
        padding: 25px 25px
    }
}

.pagination {
    border-radius: 0;
    padding: 0;
    margin: 0
}

.pagination ul {
    display: inline-block;
    margin: 0 auto;
    padding: 0
}

.pagination li {
    display: inline
}

.pagination a {
    float: left;
    font-size: 15px;
    font-weight: 600;
    padding: 0 18px;
    line-height: 40px;
    text-decoration: none;
    border: 1px solid #ededed;
    border-radius: 10px;
    margin-right: 10px;
    background: #fff
}

.pagination li:last-child a {
    margin-right: 0
}

.pagination a:hover {
    background-color: #26ae61;
    border: 1px solid #26ae61;
    color: #fff
}

.pagination .active a {
    background-color: #f7f7f7;
    color: #002147;
    border: 1px solid #dbdbdb;
    cursor: default
}

@media screen and (max-width: 575px) {
    .pagination a {
        padding: 0 12px;
        margin-right: 5px
    }
}

.owl-theme .owl-nav.disabled+.owl-dots {
    margin-top: 40px
}

.owl-theme .owl-dots .owl-dot.active span,
.owl-theme .owl-dots .owl-dot:hover span {
    background-color: #26ae61
}

.owl-nav i,
.owl-nav span {
    color: #232323;
    font-size: 28px
}

.owl-carousel .owl-item img {
    width: auto;
    display: inline-block
}

.owl-nav i {
    color: #232323;
    font-size: 18px;
    padding-top: 6px
}

.accordion .card {
    background: transparent;
    box-shadow: none;
    margin-bottom: 0;
    border: 0;
    border-radius: 0
}

.accordion .card:last-child {
    margin-bottom: 0
}

.accordion .card:last-child .accordion-button.collapsed {
    border-bottom: transparent
}

.accordion .card-header {
    border: 0;
    padding: 0;
    background: none
}

.accordion .accordion-collapse {
    border: none
}

.accordion .card {
    margin-bottom: 20px
}

.accordion .accordion-button {
    border-bottom: none;
    color: #2b303b;
    position: relative;
    display: block;
    font-weight: 600;
    width: 100%;
    text-align: left;
    white-space: normal;
    line-height: 30px;
    box-shadow: none;
    padding: 20px 45px 20px 20px;
    text-decoration: none;
    font-size: 18px;
    background: none
}

.accordion .accordion-button:hover {
    text-decoration: none
}

.accordion .accordion-button.collapsed {
    box-shadow: none;
    border-bottom: 1px solid #ededed;
    line-height: 30px
}

.accordion .accordion-button.collapsed:after {
    background: #26ae61;
    border: none;
    content: "+";
    right: 20px;
    left: inherit;
    font-size: 18px;
    height: 24px;
    line-height: 24px;
    transform: none;
    width: 24px;
    top: 22px;
    text-align: center;
    color: #ffffff
}

.accordion .accordion-button:after {
    background: #fe9703;
    border: none;
    content: "-";
    right: 20px;
    left: inherit;
    font-size: 18px;
    height: 24px;
    transform: none;
    line-height: 24px;
    width: 24px;
    top: 22px;
    position: absolute;
    color: #ffffff;
    text-align: center;
    border-radius: 0
}

.accordion .card-body {
    font-size: 16px;
    padding: 20px;
    line-height: 28px;
    text-align: left;
    border-top: 1px solid #ededed
}

@media screen and (max-width: 1199px) {
    .accordion .accordion-button {
        font-size: 16px
    }
}

@media screen and (max-width: 991px) {
    .accordion .accordion-button {
        padding: 15px 40px 15px 20px
    }
    .accordion .accordion-button:after,
    .accordion .accordion-button.collapsed:after {
        right: 15px;
        font-size: 16px;
        height: 22px;
        line-height: 22px;
        width: 22px;
        top: 19px
    }
}

@media screen and (max-width: 575px) {
    .accordion .accordion-button {
        padding: 10px 40px 10px 20px
    }
    .accordion .accordion-button:after,
    .accordion .accordion-button.collapsed:after {
        top: 14px
    }
}

ul.resp-tabs-list {
    margin: 0px;
    padding: 0px;
    padding-left: 0
}

.resp-tabs-list li {
    font-size: 16px;
    font-weight: 600;
    display: inline-block;
    padding: 8px 15px;
    margin: 0 4px 0 0;
    list-style: none;
    cursor: pointer;
    min-width: 180px
}

.resp-tabs-list li:last-child {
    margin-right: 0
}

.resp-tabs-list li i {
    font-size: 28px;
    margin-bottom: 8px;
    color: #6f6f6f
}

.resp-tabs-container {
    padding: 0px;
    background-color: #fff;
    clear: left
}

.resp-tab-content {
    display: none;
    padding: 40px 0 40px 0
}

.resp-tabs-list li.resp-tab-active {
    background: #00baee;
    background: linear-gradient(-45deg, #00baee, #8089ff);
    padding: 15px 20px 13px 20px;
    color: #00baee
}

.resp-tabs-list li.resp-tab-active i {
    color: #fff
}

.resp-content-active,
.resp-accordion-active {
    display: block
}

.resp-tab-content {
    float: left;
    width: 100%
}

h2.resp-accordion {
    background: #fff !important;
    cursor: pointer;
    display: none;
    font-size: 16px;
    border: 1px solid #ededed;
    border-top: 0px solid #ededed;
    margin: 0px;
    padding: 15px 21px;
    float: left;
    width: 100%
}

h2.resp-tab-active {
    border-bottom: 0px solid #e4e4e4 !important;
    background: #27ae60 !important;
    color: #fff
}

h2.resp-tab-title:last-child {
    border-bottom: 12px solid #e4e4e4 !important;
    background: #00baee
}

.resp-arrow {
    border-color: transparent #232323 #232323 transparent;
    border-style: solid;
    border-width: 0 1px 1px 0;
    float: right;
    display: block;
    height: 8px;
    transform: rotate(45deg);
    width: 8px;
    margin-top: 4px
}

h2.resp-tab-active span.resp-arrow {
    border-color: #fff transparent transparent #fff;
    border-style: solid;
    border-width: 1px 0 0 1px;
    float: right;
    display: block;
    height: 8px;
    transform: rotate(45deg);
    width: 8px;
    margin-top: 7px
}

.resp-vtabs ul.resp-tabs-list {
    float: left;
    width: 30%
}

.resp-vtabs .resp-tabs-list li {
    display: block;
    padding: 15px 15px !important;
    margin: 0 0 4px;
    cursor: pointer;
    float: none
}

.resp-vtabs .resp-tabs-container {
    padding: 0px;
    background-color: #fff;
    border: 1px solid #2380fb !important;
    float: left;
    width: 70%;
    min-height: 250px;
    clear: none
}

.resp-vtabs .resp-tab-content {
    border: none;
    word-wrap: break-word
}

.resp-vtabs li.resp-tab-active {
    position: relative;
    z-index: 1;
    margin-right: -1px !important;
    padding: 14px 15px 15px 11px !important;
    border-top: 1px solid;
    border: 1px solid #2380fb !important;
    border-left: 4px solid #2380fb !important;
    margin-bottom: 4px !important;
    border-right: 1px #FFF solid !important
}

.resp-arrow {
    border-color: transparent #232323 #232323 transparent;
    border-style: solid;
    border-width: 0 1px 1px 0;
    float: right;
    display: block;
    height: 8px;
    transform: rotate(45deg);
    width: 8px;
    margin-top: 4px
}

h2.resp-tab-active span.resp-arrow {
    border-color: #fff transparent transparent #fff;
    border-style: solid;
    border-width: 1px 0 0 1px;
    float: right;
    display: block;
    height: 8px;
    transform: rotate(45deg);
    width: 8px;
    margin-top: 10px
}

.resp-tab-content-active {
    display: block;
    border-color: 1px solid #ececec !important
}

h2.resp-accordion:first-child {
    border-top: 1px solid #ededed
}

h2.resp-accordion.resp-tab-active {
    border-color: #27ae60 !important
}

@media screen and (max-width: 767px) {
    ul.resp-tabs-list {
        display: none
    }
    h2.resp-accordion {
        display: block
    }
    h2.resp-accordion i {
        margin-right: 8px;
        font-size: 18px
    }
    .resp-vtabs .resp-tab-content {
        border: 1px solid #C1C1C1
    }
    .resp-vtabs .resp-tabs-container {
        border: none !important;
        float: none;
        width: 100%;
        min-height: 100px;
        clear: none
    }
    .resp-accordion-closed {
        display: none !important
    }
    .resp-vtabs .resp-tab-content:last-child {
        border-bottom: 1px solid #ededed !important
    }
    .resp-tab-content {
        background-color: #fff
    }
}

.tab-style1 .resp-tabs-list li {
    position: relative;
    font-size: 16px;
    line-height: 20px;
    font-weight: 600;
    display: inline-block;
    padding: 25px 15px;
    margin: 0;
    font-size: 18px;
    margin-right: 10px;
    list-style: none;
    cursor: pointer;
    min-width: 210px;
    color: #282b2d;
    background: #ffffff;
    white-space: normal;
    word-break: break-word;
    border: 1px solid #ededed;
    width: 200px;
    min-height: 120px;
    vertical-align: top
}

.tab-style1 .resp-tabs-list li.resp-tab-active {
    border: 1px solid #ededed;
    position: relative
}

.tab-style1 .resp-tabs-list li i {
    font-size: 30px;
    vertical-align: middle;
    margin-bottom: 20px;
    display: block;
    font-weight: 500;
    color: #26ae61
}

.tab-style1 .resp-tabs-list li.resp-tab-active {
    box-shadow: 0 0px 14px 0 rgba(0, 0, 0, 0.08)
}

.tab-style1 .resp-tabs-list li.resp-tab-active:before {
    content: "";
    border-bottom: 2px solid #fe9703;
    display: inline-block;
    position: absolute;
    left: 0px;
    right: 0px;
    bottom: -1px;
    opacity: 1;
    transform: scale(1);
    transition: all 0.4s ease-in-out
}

.tab-style1 ul.resp-tabs-list {
    text-align: center;
    margin-bottom: 60px;
    display: inline-block;
    width: 100%
}

.tab-style1 ul.resp-tabs-list.text-left {
    padding-left: 15px
}

.tab-style1 ul.resp-tabs-list li:last-child {
    margin-right: 0
}

.tab-style1 .resp-tab-content {
    background: #ffffff;
    border: 1px solid #ededed;
    padding: 30px;
    width: 85%;
    float: none;
    margin: 0 auto
}

.tab-style1 .resp-tabs-container {
    background: unset
}

@media screen and (max-width: 1199px) {
    .tab-style1 .resp-tab-content {
        width: 100%
    }
}

@media screen and (max-width: 991px) {
    .tab-style1 .resp-tab-content {
        padding: 20px
    }
    .tab-style1 h2.resp-tab-active.resp-accordion i {
        color: #ffffff
    }
    .tab-style1 ul.resp-tabs-list {
        display: none
    }
    .tab-style1 h2.resp-accordion {
        display: block;
        float: none;
        font-weight: 500;
        font-size: 18px
    }
    .tab-style1 h2.resp-accordion i {
        margin-right: 15px;
        font-size: 18px;
        vertical-align: middle;
        color: #27ae60
    }
    .tab-style1 .resp-vtabs .resp-tab-content {
        border: 1px solid #C1C1C1
    }
    .tab-style1 .resp-vtabs .resp-tabs-container {
        border: none !important;
        float: none;
        width: 100%;
        min-height: 100px;
        clear: none
    }
    .tab-style1 .resp-accordion-closed {
        display: none !important
    }
    .tab-style1 .resp-vtabs .resp-tab-content:last-child {
        border-bottom: 1px solid #ededed !important
    }
    .tab-style1 .resp-tab-content {
        background-color: #fff
    }
}

@media screen and (max-width: 575px) {
    .tab-style1 .resp-tab-content {
        padding: 15px
    }
    .tab-style1 h2.resp-accordion {
        font-size: 16px
    }
    .tab-style1 h2.resp-accordion i {
        margin-right: 10px
    }
}

.story-video {
    height: 100%
}

.embed-responsive {
    position: relative;
    display: block;
    height: 0;
    padding: 0;
    overflow: hidden
}

.embed-responsive .embed-responsive-item,
.embed-responsive iframe,
.embed-responsive embed,
.embed-responsive object,
.embed-responsive video {
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    width: 100%;
    height: 100%;
    border: 0
}

.embed-responsive-16by9 {
    padding-bottom: 56.25%
}

.embed-responsive-4by3 {
    padding-bottom: 75%
}

.fullscreen-bg {
    position: fixed;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    overflow: hidden;
    z-index: -100
}

.fullscreen-bg__video {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%
}

@media (min-aspect-ratio: 16 / 9) {
    .fullscreen-bg__video {
        height: 300%;
        top: -100%
    }
}

@media (max-aspect-ratio: 16 / 9) {
    .fullscreen-bg__video {
        width: 300%;
        left: -100%
    }
}

.video_btn {
    position: relative;
    height: 80px;
    width: 80px;
    background: #26ae61;
    text-align: center;
    display: inline-block;
    line-height: 80px;
    color: #fff;
    border-radius: 50%;
    transition-duration: 0s;
    -ms-transition-duration: 0s;
    -moz-transition-duration: 0s;
    -webkit-transition-duration: 0s;
    -o-transition-duration: 0s
}

.video_btn:hover i,
.video_btn:focus i {
    color: #fff
}

.video_btn:after {
    content: "";
    position: absolute;
    left: 50%;
    top: 50%;
    height: 80px;
    width: 80px;
    border: 2px solid #fff;
    border-radius: 50%;
    transform: translate(-50%, -50%);
    -moz-transform: translateX(-50%) translateY(-50%);
    -webkit-transform: translateX(-50%) translateY(-50%);
    -ms-transform: translateX(-50%) translateY(-50%);
    -o-transform: translateX(-50%) translateY(-50%);
    transform: translateX(-50%) translateY(-50%);
    opacity: .3;
    animation: pulse-border 1500ms ease-out infinite
}

.video_btn:before {
    content: "";
    position: absolute;
    left: 50%;
    top: 50%;
    height: 95px;
    width: 95px;
    border: 2px solid #fff;
    border-radius: 50%;
    transform: translate(-50%, -50%);
    -moz-transform: translateX(-50%) translateY(-50%);
    -webkit-transform: translateX(-50%) translateY(-50%);
    -ms-transform: translateX(-50%) translateY(-50%);
    -o-transform: translateX(-50%) translateY(-50%);
    transform: translateX(-50%) translateY(-50%);
    opacity: .3;
    animation: pulse-border 1500ms ease-out infinite
}

.video_btn.small {
    width: 50px;
    height: 50px;
    line-height: 50px
}

.video_btn.small:after {
    height: 50px;
    width: 50px
}

.video_btn.small:before {
    height: 65px;
    width: 65px
}

@keyframes pulse-border {
    0% {
        transform: translateX(-50%) translateY(-50%) translateZ(0) scale(1);
        opacity: 1
    }
    100% {
        transform: translateX(-50%) translateY(-50%) translateZ(0) scale(1.5);
        opacity: 0
    }
}

@media screen and (max-width: 1199px) {
    .video_btn {
        height: 75px;
        width: 75px;
        line-height: 75px
    }
    .video_btn:after {
        height: 75px;
        width: 75px
    }
    .video_btn:before {
        height: 90px;
        width: 90px
    }
}

@media screen and (max-width: 991px) {
    .video_btn {
        height: 70px;
        width: 70px;
        line-height: 70px
    }
    .video_btn:after {
        height: 70px;
        width: 70px
    }
    .video_btn:before {
        height: 85px;
        width: 85px
    }
    @keyframes pulse-border {
        0% {
            transform: translateX(-50%) translateY(-50%) translateZ(0) scale(1)
        }
        100% {
            transform: translateX(-50%) translateY(-50%) translateZ(0) scale(1.2)
        }
    }
}

@media screen and (max-width: 767px) {
    .video_btn {
        height: 60px;
        width: 60px;
        line-height: 60px
    }
    .video_btn:after {
        height: 60px;
        width: 60px
    }
    .video_btn:before {
        height: 75px;
        width: 75px
    }
}

.about-image-wrapper {
    position: relative
}

.about-image-wrapper:before {
    position: absolute;
    content: "";
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.55);
    border-radius: 10px
}

.about-image-wrapper .play-btn {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    font-size: 14px;
    background: #fe9703;
    color: #ffffff;
    width: 50px;
    height: 50px;
    line-height: 50px;
    text-align: center;
    border-radius: 50%
}

.about-image-wrapper .play-btn:after {
    content: "";
    position: absolute;
    left: 50%;
    top: 50%;
    height: 50px;
    width: 50px;
    border: 1px solid #fff;
    border-radius: 50%;
    transform: translate(-50%, -50%);
    transform: translateX(-50%) translateY(-50%);
    opacity: .3;
    animation: pulse-border 1500ms ease-out infinite
}

.about-image-wrapper .play-btn:before {
    content: "";
    position: absolute;
    left: 50%;
    top: 50%;
    height: 65px;
    width: 65px;
    border: 1px solid #fff;
    border-radius: 50%;
    transform: translate(-50%, -50%);
    transform: translateX(-50%) translateY(-50%);
    opacity: .3;
    animation: pulse-border 1500ms ease-out infinite
}

@keyframes pulse-border {
    0% {
        transform: translateX(-50%) translateY(-50%) translateZ(0) scale(1);
        opacity: 1
    }
    100% {
        transform: translateX(-50%) translateY(-50%) translateZ(0) scale(1.5);
        opacity: 0
    }
}

.about-image {
    margin-left: 80px;
    margin-top: -95px;
    margin-right: 50px
}

.about-image img {
    border: 10px solid #fafafa
}

.about-style-01 .about-right h2 {
    font-size: 40px
}

.about-style-01 h4 {
    position: relative;
    display: block;
    padding-left: 80px;
    margin-bottom: 8px;
    font-size: 20px;
    vertical-align: middle
}

.about-style-01 h4:before {
    position: absolute;
    content: '';
    width: 30px;
    height: 2px;
    left: 35px;
    top: 12px;
    background-color: #26ae61
}

.about-style-01 h4 span {
    position: absolute;
    left: 0px;
    top: 0;
    font-size: 20px;
    color: #26ae61
}

@media screen and (max-width: 1199px) {
    .about-image {
        margin-top: -34px
    }
}

@media screen and (max-width: 991px) {
    .about-style-01 .about-right h2 {
        font-size: 35px
    }
}

@media screen and (max-width: 575px) {
    .about-style-01 .about-right h2 {
        font-size: 25px
    }
}

.service-wrapper {
    padding: 25px;
    border: 1px solid #ededed;
    background: #ffffff;
    text-align: center;
    height: 100%;
    width: 100%;
    position: relative;
    border-radius: 8px
}

.service-wrapper .service-icons {
    width: 80px;
    height: 80px;
    text-align: center;
    border: 1px solid #ededed;
    padding: 15px;
    margin: 0 auto 25px;
    border-radius: 8px;
    background: rgba(38, 174, 97, 0.1)
}

.service-wrapper:hover {
    box-shadow: 0px 6px 15px rgba(64, 79, 104, 0.05)
}

@media screen and (max-width: 575px) {
    .service-wrapper .service-icons {
        width: 65px;
        height: 65px
    }
}

.process-wrapper .process-details {
    display: inline-block;
    position: relative;
    z-index: 0;
    width: 100%;
    line-height: 1
}

.process-wrapper .process-details .process-title {
    font-size: 16px;
    letter-spacing: 6px;
    left: 35px;
    top: 40%;
    margin: 0;
    font-weight: 700;
    padding: 0;
    position: absolute;
    text-transform: capitalize
}

.process-wrapper .divider {
    border-bottom: 2px solid #fe9703;
    padding-bottom: 15px;
    margin-bottom: 25px;
    content: "";
    display: block;
    text-align: center;
    width: 80px
}

.process-details .step-number {
    color: #ededed;
    font-size: 100px;
    font-style: italic;
    font-weight: 700
}

@media screen and (max-width: 1199px) {
    .process-details .step-number {
        font-size: 80px
    }
}

@media screen and (max-width: 767px) {
    .process-details .step-number {
        font-size: 70px
    }
}

@media screen and (max-width: 575px) {
    .process-wrapper .process-details .process-title {
        font-size: 15px;
        left: 25px
    }
}

.sidebar-title {
    background-color: #f8f9fa;
    padding: 10px 20px;
    border: 1px solid #ededed;
    border-top-left-radius: 10px;
    border-top-right-radius: 10px;
    font-weight: 600;
    color: #282b2d;
    font-size: 18px
}

.sidebar .widget {
    margin-bottom: 30px;
    padding: 25px 20px;
    border: 1px solid #ededed;
    border-top: 0;
    border-bottom-left-radius: 10px;
    border-bottom-right-radius: 10px
}

.sidebar .widget:last-child {
    margin-bottom: 0
}

@media screen and (max-width: 767px) {
    .sidebar .widget {
        padding: 20px
    }
}

.job-details-sidebar .widget {
    margin-bottom: 30px
}

.job-details-sidebar .widget h4 {
    font-size: 20px;
    margin-bottom: 25px;
    border-bottom: 1px solid #ededed;
    padding-bottom: 15px
}

.job-details-sidebar .widget:last-child {
    margin-bottom: 0
}

.job-details-logo {
    width: 80px;
    height: 80px;
    text-align: center;
    border: 1px solid #ededed;
    padding: 15px;
    background: #fafafa
}

.candidate-social-icon {
    margin-bottom: 0;
    list-style: none;
    padding: 0
}

.candidate-social-icon li {
    display: inline-block;
    margin-right: 10px
}

.candidate-social-icon li a {
    text-align: center;
    height: 36px;
    width: 36px;
    line-height: 40px;
    font-size: 14px;
    border-radius: 50%;
    display: inline-block;
    background: #26ae61;
    color: #ffffff
}

.candidate-social-icon li:last-child {
    margin-right: 0
}

.candidate-social-icon li a:hover {
    background-color: #fe9703
}

.social-icons-list {
    list-style: none;
    padding: 0px;
    margin: 0px
}

.social-icons-list li {
    margin-bottom: 15px;
    position: relative;
    font-weight: 500;
    display: inline-block;
    margin-right: 10px
}

.social-icons-list li a {
    height: 45px;
    width: 45px;
    line-height: 45px;
    color: #fff;
    font-size: 14px;
    padding: 15px 18px;
    border-radius: 10px
}

.social-icons-list li .facebook {
    background-color: #3b5998
}

.social-icons-list li .twitter {
    background-color: #38a1f3
}

.social-icons-list li .youtube {
    background-color: #ff0000
}

.social-icons-list li .linkedin {
    background-color: #0e76a8
}

.social-icons-list li:last-child {
    margin-bottom: 0
}

@media screen and (max-width: 575px) {
    .social-icons-list li a {
        padding: 14px;
        font-size: 13px
    }
}

.job-detail-info {
    position: relative;
    font-size: 14px;
    padding: 6px 20px;
    border-radius: 10px;
    margin: 5px 5px 5px 10px;
    display: inline-block;
    vertical-align: middle;
    background: rgba(38, 174, 97, 0.12);
    color: #26ae61
}

.social-links {
    display: inline-flex;
    align-items: center
}

.social-links a {
    font-size: 16px;
    line-height: 26px;
    color: #696969;
    margin-right: 20px
}

.social-links a:last-child {
    margin-right: 0
}

.job-details-info {
    position: relative;
    font-size: 13px;
    margin-right: 10px;
    padding: 6px 15px;
    border-radius: 10px;
    margin-bottom: 10px;
    font-weight: 600;
    display: inline-block
}

.job-details-info.time {
    background: rgba(25, 103, 210, 0.15);
    color: #1967D2
}

.job-details-info.privacy {
    background: rgba(52, 168, 83, 0.15);
    color: #26ae61
}

.job-details-info.required {
    background: rgba(249, 171, 0, 0.15);
    color: #F9AB00
}

.job-details-title {
    background-color: #f8f9fa;
    padding: 15px 25px;
    border: 1px solid #ededed;
    border-top-left-radius: 10px;
    border-top-right-radius: 10px
}

.job-details-content {
    padding: 25px;
    border: 1px solid #ededed;
    border-top: 0;
    border-bottom-left-radius: 10px;
    border-bottom-right-radius: 10px
}

.vertical-timeline {
    position: relative
}

.vertical-timeline:before {
    content: '';
    position: absolute;
    width: 2px;
    height: 100%;
    background: #ebeff1;
    left: 33%;
    top: 3px
}

.left-side {
    display: inline-block;
    flex-basis: 33%;
    position: relative
}

.left-side:before {
    content: '\f192';
    font-family: Font Awesome\ 5 Free;
    font-weight: 600;
    color: #fe9703;
    top: 1px;
    right: -11px;
    position: absolute;
    font-size: 18px;
    line-height: 1;
    background-color: #ffffff
}

.right-side {
    flex-basis: 67%;
    display: inline-block;
    padding-left: 60px
}

@media screen and (max-width: 767px) {
    .vertical-timeline:before {
        left: 40%
    }
    .left-side {
        flex-basis: 40%
    }
    .right-side {
        flex-basis: 60%
    }
}

@media screen and (max-width: 575px) {
    .vertical-timeline {
        padding-left: 35px
    }
    .vertical-timeline::before {
        left: 10px
    }
    .left-side {
        width: 100%
    }
    .right-side {
        width: 100%;
        padding-left: 0;
        margin-top: 20px
    }
    .left-side:before {
        right: auto;
        left: -34px
    }
}

.contact-social-icon {
    margin-bottom: 0;
    list-style: none;
    padding: 0
}

.contact-social-icon li {
    display: inline-block;
    margin-right: 10px
}

.contact-social-icon li a {
    text-align: center;
    height: 36px;
    width: 36px;
    line-height: 40px;
    font-size: 14px;
    border-radius: 50%;
    display: inline-block;
    background: #26ae61;
    color: #ffffff
}

.contact-social-icon li:last-child {
    margin-right: 0
}

.contact-social-icon li a:hover {
    background-color: #fe9703
}

.form-check-input:focus {
    border-color: unset;
    box-shadow: none
}

.login-divider {
    position: relative;
    display: flex;
    justify-content: center;
    margin: 30px 0 15px 0
}

.login-divider:before {
    content: "";
    width: 100%;
    height: 1px;
    background: #d8d8d8;
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    left: 0
}

.form-social-item a {
    border-radius: 10px;
    text-align: center;
    padding: 12px 10px;
    font-size: 14px;
    vertical-align: middle;
    font-weight: 600;
    display: block
}

.form-social-item .facebook {
    background: #3b5998;
    color: #fff
}

.form-social-item .twitter {
    background: #55acee;
    color: #fff
}

.form-social-item .linkedin {
    background: #2867b2;
    color: #fff
}

@media screen and (max-width: 1199px) {
    .login-divider {
        margin: 25px 0
    }
}

@media screen and (max-width: 767px) {
    .login-divider {
        margin: 20px 0
    }
}

.coming-soon-content {
    text-align: center;
    padding: 0px 30px
}

.coming-soon-content h1 {
    font-size: 46px
}

.coming-soon .coming-soon-content .countdown {
    padding: 0
}

.coming-soon .coming-soon-content .countdown li {
    min-width: 150px;
    height: 100%;
    color: #26ae61;
    font-weight: 600;
    margin-right: 10px;
    margin-top: 10px;
    border-radius: 10px;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    background: #ffffff;
    box-shadow: 0px 5px 30px 4px rgba(33, 37, 41, 0.06)
}

.coming-soon .coming-soon-content .countdown li span {
    font-size: 40px;
    font-weight: 700;
    position: relative;
    width: 100%;
    height: 100%;
    padding: 15px 0;
    line-height: 1
}

.coming-soon .coming-soon-content .countdown li p.timeRefDays,
.coming-soon .coming-soon-content .countdown li p.timeRefHours,
.coming-soon .coming-soon-content .countdown li p.timeRefMinutes,
.coming-soon .coming-soon-content .countdown li p.timeRefSeconds {
    font-size: 15px;
    text-transform: uppercase;
    background-color: #f8f9fa;
    padding: 10px 0;
    width: 100%;
    height: 100%;
    font-weight: 600;
    color: #002147;
    margin-bottom: 0;
    border-top: 1px solid #ededed;
    border-radius: 10px;
    display: block
}

@media screen and (max-width: 991px) {
    .coming-soon .coming-soon-content .countdown li {
        min-width: 130px
    }
    .coming-soon .coming-soon-content .countdown li span {
        font-size: 36px
    }
    .coming-soon-content h1 {
        font-size: 38px
    }
}

@media screen and (max-width: 767px) {
    .coming-soon-content {
        padding: 0px 25px
    }
    .coming-soon .coming-soon-content .countdown li {
        min-width: 180px;
        margin-top: 10px
    }
    .coming-soon-content h1 {
        font-size: 29px
    }
}

@media screen and (max-width: 575px) {
    .coming-soon-content {
        padding: 0px 20px
    }
    .coming-soon .coming-soon-content .countdown li {
        min-width: 45%
    }
    .coming-soon .coming-soon-content .countdown li span {
        font-size: 32px
    }
}

.search-form_input {
    color: #26ae61
}

.search-frame h4 a:hover {
    color: #26ae61
}

.search-frame .search_list .match {
    color: #26ae61
}

.search-frame .search_list li:before {
    color: #26ae61
}

.search-frame .search_list li+li {
    border-top: 3px solid #26ae61
}

.search-frame .search {
    color: #26ae61
}

.modal-backdrop {
    z-index: 99999
}

.modal {
    z-index: 999999
}

.bd-example button,
.bd-example a {
    margin-top: .25rem;
    margin-bottom: .25rem
}

.icon-gallery .d-table {
    margin-top: 30px
}

.icon-gallery .d-table-cell {
    width: 125px;
    height: 125px;
    text-align: center;
    border-radius: 5px;
    margin-bottom: 25px;
    border: 1px solid rgba(0, 0, 0, 0.075);
    vertical-align: middle;
    font-size: 14px;
    transition: all 0.2s ease-in-out;
    padding: 10px;
    background: #fff
}

.icon-gallery i {
    display: block;
    margin-bottom: 15px;
    font-size: 28px;
    color: #26ae61
}

pre[class*="language-"] {
    max-height: 45vh;
    height: 100%;
    margin: 35px 0 15px 0;
    padding-top: 0
}

.html-code {
    background-color: #fbfbfb;
    position: relative;
    box-shadow: inset 0 0 0 1px #dde1e6, 0 3px 5px rgba(0, 0, 0, 0.15);
    padding: 30px;
    border-radius: 5px;
    border: 1px solid #ededed
}

.html-code:before {
    color: #c8dfab;
    content: "•••";
    font-size: 30px;
    left: 24px;
    letter-spacing: 4px;
    line-height: 12px;
    position: absolute;
    top: 24px
}

.copy-element {
    position: absolute;
    top: 0;
    right: 85px;
    transition: opacity 0.3s ease-in-out
}

.source-element {
    position: absolute;
    top: 0;
    right: 0;
    transition: opacity 0.3s ease-in-out
}

.html-code .copy-element {
    top: 15px;
    right: 30px
}

.html-code:hover .copy-element,
.html-code:hover .source-element {
    opacity: 1
}

.box-hover:hover .copy-element,
.box-hover:hover .source-element {
    opacity: 1
}

.copy-element>a,
.source-element>a {
    background: #dde1e6;
    color: #777 !important;
    display: inline-block;
    padding: 5px 15px;
    font-size: 14px;
    text-transform: capitalize;
    border-radius: 5px;
    cursor: pointer !important;
    font-weight: 600
}

.copy-element>a:hover,
.source-element>a:hover {
    background: #26ae61;
    color: #fff !important
}

.copy-clipboard {
    cursor: pointer;
    padding: 5px 15px
}

.white-popup-block {
    background-color: #fbfbfb;
    position: relative;
    max-width: 650px;
    box-shadow: inset 0 0 0 1px #dde1e6, 0 3px 5px rgba(0, 0, 0, 0.15);
    padding: 60px 30px 30px 30px;
    border-radius: 5px;
    margin: 40px auto;
    border: 1px solid #ededed
}

.white-popup-block.popup-copy.mfp-hide {
    display: block !important;
    height: 0;
    position: absolute;
    z-index: -1;
    padding: 0;
    opacity: 0;
    margin: 0
}

.white-popup-block:before {
    color: rgba(38, 174, 97, 0.2);
    content: "•••";
    font-size: 30px;
    left: 24px;
    letter-spacing: 4px;
    line-height: 12px;
    position: absolute;
    top: 24px
}

.white-popup-block:hover .copy-element {
    opacity: 1
}

.white-popup-block .copy-element {
    top: 45px;
    right: 30px
}

.box-hover {
    position: relative
}

.box-hover .container {
    position: relative
}

.inner-title {
    border-bottom: 1px solid rgba(0, 0, 0, 0.09);
    margin-bottom: 35px;
    padding-bottom: 20px
}

.inner-title h2 {
    position: relative;
    font-weight: 600;
    margin-bottom: 0;
    color: #26ae61
}

@media screen and (max-width: 767px) {
    .elements-block .inner-title {
        margin-bottom: 65px
    }
    .copy-element,
    .source-element {
        top: 65px
    }
}

.candidates-favourite {
    position: absolute;
    left: 20px;
    top: 20px;
    height: 35px;
    width: 35px;
    line-height: 38px;
    background-color: #26ae61;
    border-radius: 5px;
    text-align: center;
    font-size: 15px;
    color: #ffffff
}

.candidates-favourite:hover {
    color: #ffffff;
    background: #e74c3c
}

.process-style1 {
    position: relative;
    text-align: center
}

.process-style1 .line {
    position: absolute;
    top: 40px;
    left: 40%;
    transform: translateX(50%);
    background: #ededed;
    width: 65%;
    height: 1px
}

.process-style1 .number-wrapper {
    position: relative;
    height: 70px;
    width: 70px;
    margin: 0 auto 40px;
    background: #27ae60;
    border-radius: 50%
}

.process-style1:hover .number-wrapper:before {
    content: '';
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    border-radius: 50%;
    background: inherit;
    width: 85px;
    height: 85px;
    opacity: .2
}

.process-style1:hover .number-wrapper:after {
    content: '';
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    border-radius: 50%;
    background: inherit;
    width: 100px;
    height: 100px;
    overflow: hidden;
    opacity: .1
}

.process-style1 .number {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    font-size: 22px;
    font-weight: 500;
    color: #ffffff;
    border-radius: 50%
}

@media screen and (max-width: 992px) {
    .process-style1 .number-wrapper {
        width: 55px;
        height: 55px
    }
    .process-style1 .number {
        font-size: 18px
    }
    .process-style1 .line {
        top: 25px
    }
}

@media screen and (max-width: 991px) {
    .process-style1 .line {
        display: none
    }
    .process-style1:hover .number-wrapper:before {
        width: 75px;
        height: 75px
    }
    .process-style1:hover .number-wrapper:after {
        width: 90px;
        height: 90px
    }
    .process-style1 .number {
        font-size: 20px
    }
}

@media screen and (max-width: 767px) {
    .process-style1 .number-wrapper {
        margin: 0 auto 20px
    }
    .process-style1:hover .number-wrapper:before {
        width: 70px;
        height: 70px
    }
    .process-style1:hover .number-wrapper:after {
        width: 85px;
        height: 85px
    }
    .process-style1 .number {
        font-size: 16px
    }
}

@media screen and (max-width: 575px) {
    .process-style1 .number-wrapper {
        width: 45px;
        height: 45px
    }
}

.process-style2 {
    position: relative;
    text-align: center
}

.process-style2:after {
    position: absolute;
    content: "";
    display: block;
    width: 50%;
    border: 1px dashed #e4e4e4;
    top: 60px;
    transform: translateY(-50%);
    right: 0
}

.process-style2:before {
    position: absolute;
    content: "";
    display: block;
    width: 50%;
    border: 1px dashed #e4e4e4;
    top: 60px;
    transform: translateY(-50%);
    left: 0;
    margin-left: 25px
}

.process-style2.first:before,
.process-style2.last:after {
    content: none
}

.process-style2 .process-arrow:after {
    position: absolute;
    content: '\f061';
    font-weight: 700;
    font-family: Font Awesome\ 5 Free;
    display: block;
    color: #ffb14a;
    top: 60px;
    transform: translateY(-50%);
    right: -34px;
    font-size: 20px;
    text-align: right;
    z-index: 1
}

.process-style2.last .process-arrow:after {
    content: none
}

.process-style2 .process-icon-box {
    display: inline-block;
    position: relative;
    height: 130px;
    width: 130px;
    box-shadow: 0 10px 25px rgba(60, 72, 88, 0.15);
    background-color: #fff;
    border-radius: 50%;
    margin-bottom: 30px;
    z-index: 9;
    padding: 35px
}

.process-style2 .process-icon-box:after {
    content: '';
    position: absolute;
    top: 10px;
    right: 10px;
    bottom: 10px;
    left: 10px;
    border-radius: 50%;
    border: 1px solid rgba(38, 174, 97, 0.3)
}

.process-style2 .process-icon-box span {
    display: inline-block;
    position: absolute;
    vertical-align: middle;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    color: #27ae60
}

@media screen and (max-width: 1199px) {
    .process-style2 .process-icon-box {
        height: 120px;
        width: 120px
    }
}

@media screen and (max-width: 991px) {
    .process-style2:before,
    .process-style2:after,
    .process-style2 .process-arrow:after {
        content: none
    }
    .process-style2 .process-icon-box {
        height: 110px;
        width: 110px;
        margin-bottom: 25px;
        padding: 30px
    }
}

@media screen and (max-width: 575px) {
    .process-style2 .process-icon-box {
        height: 100px;
        width: 100px;
        margin-bottom: 20px
    }
}

.list-progress {
    counter-reset: list-progress-counter
}

.process-style3 {
    border: 2px dotted #ededed;
    padding: 25px;
    background: #ffffff
}

.process-style3 .process-number {
    font-size: 40px;
    line-height: 1;
    font-weight: 700;
    color: rgba(254, 151, 3, 0.4)
}

.process-style3 .seprator {
    position: relative
}

.process-style3 .seprator:after {
    border-bottom: 2px solid #fe9703;
    margin: 25px 0;
    content: "";
    display: block;
    text-align: center;
    width: 18%
}

.process-style3 .process-number:before {
    content: counter(list-progress-counter, decimal-leading-zero);
    counter-increment: list-progress-counter
}

@media screen and (max-width: 767px) {
    .process-style3 .process-number {
        font-size: 34px
    }
}

.inner-box {
    position: relative;
    background: rgba(38, 174, 97, 0.1);
    border-radius: 5px;
    padding: 50px
}

.inner-box.yellow {
    background: rgba(254, 151, 3, 0.1)
}

.inner-box .extra-image {
    position: absolute;
    left: 30px;
    bottom: 0;
    margin-bottom: 0
}

@media screen and (max-width: 767px) {
    .inner-box {
        padding: 30px;
        padding-bottom: 0
    }
    .inner-box .extra-image {
        position: relative;
        left: 0;
        text-align: center
    }
    .inner-box .extra-image img {
        margin: 0 auto
    }
}

.form-group {
    margin-bottom: 1rem
}

.form-group label {
    margin-bottom: .5rem
}

.form-control:focus {
    border-color: #26ae61
}

.form-check-input:checked {
    border-color: #26ae61;
    background-color: #26ae61
}

.form-check-input:focus {
    box-shadow: none
}

.quform-input {
    position: relative
}

.quform-input .quform-errors-wrap {
    position: absolute;
    right: 8px;
    top: 0;
    line-height: normal;
    z-index: 1
}

.quform-element>label {
    font-weight: 500;
    padding-bottom: 10px;
    margin-bottom: 0;
    color: #6a747b;
    font-size: 15px
}

.quform-element>label .quform-required {
    color: #cc0101;
    font-size: 10px
}

.quform-inner input {
    width: 100%
}

.newsletter-form .quform-elements {
    position: relative
}

.newsletter-form .quform-submit-inner {
    position: absolute;
    right: 0;
    top: 0;
    width: 45px;
    background: rgba(38, 174, 97, 0.19);
    height: 45px;
    border-left: none;
    border-radius: 0;
    text-align: center;
    line-height: 45px
}

.quform-elements .quform-element textarea {
    margin-bottom: 0;
    padding: 8px 15px;
    vertical-align: top
}

.quform-elements .quform-element select {
    margin-bottom: 0;
    padding: 8px 35px 8px 15px
}

.quform-errors {
    padding: 0;
    margin: 0;
    line-height: normal
}

.quform-errors>.quform-error {
    padding: 0;
    background: none;
    border: none;
    float: none;
    color: #f5543f;
    font-size: 11px;
    line-height: normal;
    letter-spacing: normal
}

.quform-outer-no-js .quform-error {
    padding: 0;
    background: none;
    border: none;
    float: none;
    color: #f5543f;
    font-size: 11px;
    line-height: normal;
    letter-spacing: normal
}

.quform-outer-no-js .quform-success-message {
    padding: 0.75rem 1.25rem 0.75rem 3rem
}

.quform-has-error input,
.quform-has-error textarea,
.quform-has-error select,
.quform-has-error input[type=file],
.quform-has-error .custom-file-label {
    border-color: #f5543f
}

.quform-success-message {
    padding: 0.75rem 1.25rem 0.75rem 3rem
}

.quform-submit-inner {
    float: none
}

.quform-loading-wrap {
    float: none
}

.quform-loading-wrap .quform-loading {
    display: inline-block
}

.light-validation .quform-errors>.quform-error {
    color: #fff
}

.newsletter-style-02 .newsletter-form .quform-elements {
    position: relative
}

.newsletter-style-02 .newsletter-form .quform-submit-inner {
    position: absolute;
    right: 1px;
    top: 1px;
    width: auto;
    background: rgba(38, 174, 97, 0.19);
    height: 48px;
    border-left: 1px solid rgba(0, 0, 0, 0.05);
    -webkit-border-top-right-radius: 0.25em;
    -webkit-border-bottom-right-radius: 0.25em;
    -moz-border-radius-topright: 0.25em;
    -moz-border-radius-bottomright: 0.25em;
    border-top-right-radius: 0.25em;
    border-bottom-right-radius: 0.25em
}

.newsletter-style-02 .newsletter-form .quform-loading-wrap {
    margin-top: 15px;
    margin-bottom: 0;
    margin-left: 0
}

.newsletter-style-02 .newsletter-form input {
    border: 1px solid rgba(0, 0, 0, 0.1);
    height: 50px;
    padding: 0.5rem 4rem 0.5rem 1rem
}

.newsletter-style-02 .newsletter-form .quform-has-error input,
.newsletter-style-02 .newsletter-form .quform-has-error textarea,
.newsletter-style-02 .newsletter-form .quform-has-error select {
    border-color: #f5543f
}

.newsletter-style-02 .newsletter-form .quform-input .quform-errors-wrap {
    right: 15px
}

.newsletter-style-02 .newsletter-form i {
    font-size: 1.2rem;
    line-height: 2rem
}

.irs-grid {
    bottom: -6px
}

.irs--flat .irs-min,
.irs--flat .irs-max {
    display: none
}

.irs--flat .irs-from,
.irs--flat .irs-to,
.irs--flat .irs-single {
    background-color: rgba(38, 174, 97, 0.1);
    padding: 5px 10px;
    font-weight: 600;
    font-size: 13px;
    color: #26ae61
}

.irs--flat .irs-from:before,
.irs--flat .irs-to:before,
.irs--flat .irs-single:before {
    border-top-color: #ededed
}

.irs--flat .irs-handle {
    top: 32px;
    width: 14px;
    height: 14px;
    background-color: #ffffff;
    border-radius: 50px;
    border: 2px solid #26ae61
}

.irs--flat .irs-handle>i:first-child {
    display: none
}

.irs--flat .irs-line {
    top: 37px;
    background-color: #ededed;
    height: 4px
}

.irs--flat .irs-bar {
    top: 37px;
    background-color: #26ae61;
    height: 4px
}

.irs-with-grid .irs-grid {
    display: none
}

.social-listing {
    margin-bottom: 0;
    list-style: none;
    padding: 0
}

.social-listing li {
    display: inline-block;
    margin-right: 20px
}

.social-listing li:last-child {
    margin-right: 0
}

.social-listing li a:hover {
    color: #26ae61
}

.blog-sidebar-title {
    background-color: #f8f9fa;
    padding: 15px 25px;
    border: 1px solid #ededed;
    border-top-left-radius: 10px;
    border-top-right-radius: 10px
}

.blog-side-bar .widget {
    margin-bottom: 30px;
    padding: 25px;
    border: 1px solid #ededed;
    border-top: 0;
    border-bottom-left-radius: 10px;
    border-bottom-right-radius: 10px
}

.blog-side-bar .widget:last-child {
    margin-bottom: 0
}

.search-bar {
    position: relative
}

.blog-side-bar .widget .search-bar input[type="search"] {
    display: block;
    width: 100%;
    padding: 15px 40px 15px 25px;
    font-size: 15px;
    color: #4b4342;
    border: 1px solid #ededed;
    background: none;
    background: #ffffff;
    margin-bottom: 0;
    border-radius: 10px
}

.blog-side-bar .widget .search-bar .btn-newsletter {
    position: absolute;
    color: #26ae61;
    right: 18px;
    top: 15px;
    padding: 0px;
    font-size: 18px;
    z-index: 3;
    outline: none
}

.blog-side-bar .widget .blog-tags {
    margin-bottom: 0;
    padding: 0
}

.blog-side-bar .widget .blog-tags li {
    display: inline-block
}

.blog-side-bar .widget .blog-tags li a {
    color: #002147;
    font-size: 15px;
    font-weight: 500;
    border-radius: 10px;
    text-transform: capitalize;
    padding: 8px 12px;
    margin: 5px 5px 5px 0;
    display: inline-block;
    border: 1px solid #ededed
}

.blog-side-bar .widget .blog-tags li a:hover {
    background: #fe9703;
    color: #ffffff;
    border: 1px solid #fe9703
}

.blog-side-bar .social-news-list {
    list-style: none;
    padding: 0px;
    margin: 0px
}

.blog-side-bar .social-news-list li {
    margin-bottom: 15px;
    position: relative;
    font-weight: 500
}

.blog-side-bar .social-news-list li .facebook {
    display: block;
    height: 50px;
    line-height: 50px;
    background-color: #3b5998;
    color: #fff;
    padding: 0 20px;
    border-radius: 10px
}

.blog-side-bar .social-news-list li .twitter {
    display: block;
    height: 50px;
    line-height: 50px;
    background-color: #38a1f3;
    color: #fff;
    padding: 0 20px;
    border-radius: 10px
}

.blog-side-bar .social-news-list li .youtube {
    display: block;
    height: 50px;
    line-height: 50px;
    background-color: #ff0000;
    color: #fff;
    padding: 0 20px;
    border-radius: 10px
}

.blog-side-bar .social-news-list li .linkedin {
    display: block;
    height: 50px;
    line-height: 50px;
    background-color: #0e76a8;
    color: #fff;
    padding: 0 20px;
    border-radius: 10px
}

.blog-side-bar .social-news-list li span {
    position: absolute;
    right: 20px;
    top: 0;
    text-align: center;
    display: block;
    font-weight: 500;
    color: #ffffff;
    vertical-align: middle
}

.blog-side-bar .social-news-list li:last-child {
    margin-bottom: 0
}

@media screen and (max-width: 1199px) {
    .blog-side-bar .widget {
        padding: 25px
    }
}

footer {
    padding: 80px 0 0;
    background: #212529
}

@media screen and (max-width: 767px) {
    footer {
        padding-top: 60px
    }
}

.footer-logo {
    display: inline-block
}

.footer-logo img {
    max-height: 43px
}

.footer-bar {
    padding: 20px 0;
    margin-top: 90px;
    text-align: center;
    border-top: 1px solid rgba(255, 255, 255, 0.2);
    line-height: 26px
}

@media screen and (max-width: 767px) {
    .footer-bar {
        margin-top: 50px
    }
}

.footer-list-style1 {
    margin: 0;
    padding: 0
}

.footer-list-style1 li {
    list-style-type: none;
    color: #fff;
    margin-bottom: 15px;
    font-size: 15px
}

.footer-list-style1 li:last-child {
    margin-bottom: 0;
    padding-bottom: 0;
    border-bottom: none
}

.footer-list-style1 li a {
    color: #ffffff;
    position: relative
}

.footer-list-style1 li a:hover {
    color: #27ae60
}

.contact-list {
    margin: 0;
    padding: 0;
    list-style-type: none
}

.contact-list li {
    margin-bottom: 20px;
    font-size: 14px;
    align-items: center
}

.contact-list li:last-child {
    margin-bottom: 0
}

.contact-list li a {
    color: #ffffff
}

.contact-list.black li a {
    color: #575a7b
}

.contact-list a:hover {
    color: #27ae60
}

.footer-social-style1 {
    margin-bottom: 0;
    display: inline-block;
    padding-left: 15px;
    list-style: none
}

.footer-social-style1 li {
    padding-right: 20px;
    display: inline-block;
    vertical-align: middle
}

.footer-social-style1 li a {
    color: #ffffff
}

.footer-social-style1 li a:hover {
    color: #26ae61
}

.footer-social-style1 li:last-child {
    padding-right: 0
}

.footer-list-style2 {
    margin: 0;
    padding: 0
}

.footer-list-style2 li {
    list-style-type: none;
    margin-bottom: 15px
}

.footer-list-style2 .white li {
    color: #ffffff !important
}

.footer-list-style2 li:last-child {
    margin-bottom: 0
}

.footer-list-style2 li a:before {
    content: '\f105';
    font-weight: 700;
    font-family: Font Awesome\ 5 Free;
    padding-right: 8px;
    transition-duration: .3s;
    font-size: 13px;
    vertical-align: middle
}

.footer-list-style2 li a:hover {
    color: #27ae60
}

.footer-list-style2 li a:hover:before {
    color: #27ae60
}

.app-btn {
    display: flex;
    background: rgba(255, 255, 255, 0.1);
    padding: 10px 25px;
    border-radius: 5px;
    margin-bottom: 10px
}

.app-btn:hover {
    background: rgba(255, 255, 255, 0.2)
}

@media screen and (max-width: 1200px) {
    .app-btn {
        padding: 10px 16px
    }
}

.footer-list-style3 {
    padding: 0;
    margin: 0;
    list-style: none
}

.footer-list-style3 li {
    padding-left: 34px;
    font-weight: 400;
    font-size: 16px;
    margin-bottom: 15px;
    position: relative
}

.footer-list-style3 li a {
    color: #fff;
    vertical-align: middle
}

.footer-list-style3 li a:hover {
    color: #27ae60
}

.footer-list-style3 li a:before {
    width: 15px;
    background: #fff;
    display: inline-block;
    vertical-align: middle;
    content: '';
    height: 2px;
    position: absolute;
    left: 0;
    top: 13px
}

.footer-list-style3 li a:hover:before {
    background: #27ae60
}

.footer-list-style3 li:last-child {
    margin-bottom: 0
}

.footer-social-style2 {
    margin: 0;
    padding: 0;
    list-style: none
}

.footer-social-style2 li {
    text-align: center;
    margin-right: 5px;
    display: inline-block
}

.footer-social-style2 li:last-child {
    margin-right: 0
}

.footer-social-style2 li a {
    color: #00204c;
    height: 36px;
    width: 36px;
    line-height: 36px;
    border-radius: 50%;
    display: inline-block;
    font-size: 15px;
    background: #ffffff
}

.footer-social-style2 li a:hover {
    color: #ffffff;
    background-color: #26ae61
}

@media screen and (max-width: 767px) {
    .footer-social-style2 li a {
        height: 35px;
        width: 35px;
        line-height: 35px;
        font-size: 13px
    }
}

.footer-menus {
    padding: 0;
    margin-bottom: 0;
    list-style: none
}

.footer-menus li {
    display: inline-block
}

.footer-menus li:after {
    content: '|';
    margin: 0 15px;
    top: 0;
    color: rgba(255, 255, 255, 0.4);
    height: auto;
    width: auto
}

.footer-menus li a {
    color: #ffffff
}

.footer-menus li.last:after {
    content: none
}

.footer-list-style4 {
    margin: 0;
    padding: 0;
    list-style: none
}

.footer-list-style4 li {
    margin-bottom: 15px;
    padding-bottom: 15px;
    border-bottom: 1px solid rgba(255, 255, 255, 0.1)
}

.footer-list-style4 li a {
    color: #ffffff;
    font-size: 15px
}

.footer-list-style4 li:last-child {
    margin-bottom: 0;
    padding-bottom: 0;
    border-bottom: 0
}

.footer-list-style4 li a:before {
    content: '\f105';
    font-weight: 700;
    font-family: Font Awesome\ 5 Free;
    padding-right: 8px;
    transition-duration: .3s;
    color: #ffffff
}

.footer-list-style4 li a:hover {
    color: #27ae60
}

.footer-list-style4 li a:hover:before {
    color: #27ae60
}

.buy-theme {
    transition-timing-function: ease-in-out;
    transition-duration: .2s;
    position: fixed;
    top: 150px;
    right: -89px;
    background: #fe9703;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    z-index: 9999
}

.buy-theme i {
    font-size: 16px;
    vertical-align: middle;
    position: relative;
    top: -1px;
    color: #fff
}

.all-demo i {
    font-size: 15px;
    vertical-align: middle;
    position: relative;
    top: -1px;
    color: #fff
}

.buy-theme:hover,
.all-demo:hover {
    transition-timing-function: ease-in-out;
    transition-duration: .2s;
    right: 0px;
    background: #fe9703
}

.all-demo:hover {
    background: #26ae61
}

.buy-theme span,
.all-demo span {
    padding: 0 9px;
    position: relative;
    top: 0;
    opacity: 0
}

.buy-theme:hover span,
.all-demo:hover span {
    opacity: 1;
    color: #fff
}

.buy-theme:hover i,
.all-demo:hover i {
    color: #fff
}

.buy-theme a,
.all-demo a {
    color: #232323;
    font-size: 10px;
    text-transform: uppercase;
    padding: 5px 10px;
    display: block;
    text-decoration: none;
    font-weight: 500;
}

.all-demo {
    transition-timing-function: ease-in-out;
    transition-duration: .2s;
    position: fixed;
    top: 185px;
    right: -105px;
    background: #26ae61;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    z-index: 9999
}

</style>
    <!-- metas -->
    <meta charset="utf-8">
    <meta name="author" content="Chitrakoot Web" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link rel="shortcut icon" href="img/logos/Eliora.png">
      
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="keywords" content="Job Portal HTML Template" />
    <meta name="description" content="Job Board - Job Portal HTML Template" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <!-- title  -->
    <title>Job Board</title>

    <!-- favicon --
    <link rel="shortcut icon" href="img/logos/favicon.png" />
    <link rel="apple-touch-icon" href="img/logos/apple-touch-icon-57x57.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="img/logos/apple-touch-icon-72x72.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="img/logos/apple-touch-icon-114x114.png" />

    <!-- plugins -->
    <link rel="stylesheet" href="css/plugins.css" />

    <!-- search css -->
    <link rel="stylesheet" href="search/search.css" />

    <!-- quform css -->
    <link rel="stylesheet" href="quform/css/base.css">

    <!-- core style css -->
    <link href="css/styles.css" rel="stylesheet" />
<style>
       /* General Body Styling */
body {
   
    font-family: 'Poppins', sans-serif;
    margin: 0;
    padding: 0;
}

.contact-btn {
    display: block;
    margin: 50px auto;
    padding: 15px 30px;
    background: linear-gradient(135deg, #0073e6 0%, #005bb5 100%);
    color: white;
    border: none;
    border-radius: 30px;
    cursor: pointer;
    font-size: 20px;
    font-weight: bold;
    transition: all 0.4s ease;
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.3);
}

.contact-btn:hover {
    background: linear-gradient(135deg, #005bb5 0%, #00408a 100%);
    box-shadow: 0px 6px 12px rgba(0, 0, 0, 0.4);
    transform: translateY(-2px);
}

/* Modal Overlay Styling */
.modal {
    display: none;
    position: fixed;
    z-index: 999;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.8);
    backdrop-filter: blur(8px); /* Softens the background */
    transition: opacity 0.5s ease;
}

/* Modal Content Box */
.modal-content {
    background: white;
    margin: 10% auto;
    padding: 40px;
    border-radius: 20px;
    box-shadow: 0 15px 30px rgba(0, 0, 0, 0.5);
    max-width: 500px;
    text-align: center;
    animation: fadeIn 0.4s;
}

/* Heading Styling */
h2 {
    color: #0073e6;
    margin-bottom: 20px;
    font-weight: bold;
    font-size: 28px;
}

/* Input and Textarea Styles */
input, textarea {
    width: 100%;
    padding: 15px;
    margin: 12px 0;
    border: 1px solid #d4d4d4;
    border-radius: 10px;
    box-shadow: inset 0 1px 4px rgba(0, 0, 0, 0.1);
    transition: all 0.3s ease;
    font-size: 16px;
    font-family: 'Poppins', sans-serif;
}

input:focus, textarea:focus {
    border-color: #0073e6;
    box-shadow: 0 0 8px rgba(0, 115, 230, 0.5);
    outline: none;
}

/* Submit Button Styling */
input[type="submit"] {
    background: linear-gradient(135deg, #0073e6 0%, #005bb5 100%);
    color: white;
    border: none;
    cursor: pointer;
    font-size: 18px;
    font-weight: bold;
    padding: 15px;
    border-radius: 30px;
    transition: all 0.3s ease;
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.3);
}

input[type="submit"]:hover {
    background: linear-gradient(135deg, #005bb5 0%, #00408a 100%);
    box-shadow: 0px 6px 12px rgba(0, 0, 0, 0.4);
    transform: translateY(-2px);
}

/* Close Button Styling */
.close {
    color: #aaa;
    float: right;
    font-size: 30px;
    font-weight: bold;
    cursor: pointer;
    margin-top: -10px;
    transition: color 0.3s ease;
}

.close:hover, .close:focus {
    color: #000;
    text-decoration: none;
}

/* Fade-in Animation for Modal */
@keyframes fadeIn {
    from { opacity: 0; transform: scale(0.9); }
    to { opacity: 1; transform: scale(1); }
}
.banner2:after {
height: 100%;
}
    </style>

    <!-- Include SweetAlert -->
    
</head>

<body>

    <!-- PAGE LOADING
    ================================================== -->
    <div id="preloader"></div>

    <!-- MAIN WRAPPER
    ================================================== -->
    <div class="main-wrapper">

        <!-- HEADER
        ================================================== -->
        <header class="header-style2">


            <div class="navbar-default">

                <!-- start top search -->
                <div class="top-search bg-secondary">
                    <div class="container-fluid px-lg-1-6 px-xl-2-5 px-xxl-2-9">
                        <form class="search-form" action="search.html" method="GET" accept-charset="utf-8">
                            <div class="input-group">
                                <span class="input-group-addon cursor-pointer">
                                    <button class="search-form_submit fas fa-search text-white" type="submit"></button>
                                </span>
                                <input type="text" class="search-form_input form-control" name="s" autocomplete="off" placeholder="Type & hit enter...">
                                <span class="input-group-addon close-search mt-1"><i class="fas fa-times"></i></span>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- end top search -->

                <div class="container-fluid px-lg-1-6 px-xl-2-5 px-xxl-2-9">
                    <div class="row align-items-center">
                        <div class="col-12 col-lg-12">
                            <div class="menu_area alt-font">
                                <nav class="navbar navbar-expand-lg navbar-light p-0">

                                    <div class="navbar-header navbar-header-custom">
                                        <!-- start logo --
                                        <a href="index.html" class="navbar-brand logodefault"><img id="logo" src="" alt="logo"></a>
                                        <!-- end logo -->
                                    </div>

                                    <div class="navbar-toggler"></div>

                                    <!-- menu area -->
                                    <ul class="navbar-nav ms-auto" id="nav" style="display: none;">
                                        <li><a href="#!">Home</a>
                                            
                                        </li>
                                        <li><a href="#!">Pages</a>
                                            <ul>
                                                <li><a href="aboutus.html">About Us</a></li>
												<li><a href="how-it-works.html">How It Works</a></li>
												<li><a href="testimonials.html">Testimonials</a></li>
												<li><a href="pricing-plans.html">Pricing Plans</a></li>
												<li><a href="FAQ.jsp">FAQ</a></li>
												<li><a href="javascript:void(0)" id="openModalBtn" class="contact-link">Contact Us</a></li>
												<li><a href="#!">User Pages</a></li>
                                                    <ul>
                                                        <li><a href="login.html">Login</a></li>
                                                        <li><a href="registration.html">Register</a></li>
                                                        <li><a href="forgot-password.html">Forgot Password</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#!">Others</a>
                                                    <ul>
                                                        <li><a href="privacy-policy.html">Privacy Policy</a></li>
                                                        <li><a href="terms-and-conditions.html">Terms & Conditions</a></li>
                                                        <li><a href="coming-soon.html">Coming Soon</a></li>
                                                        <li><a href="404-page.html">404 Page</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="has-sub"><a href="#!">Job Listing</a>
                                            <ul class="row megamenu">
                                                <li class="col-lg-4 col-xl-3"><span class="mb-0 mb-lg-3 d-block py-2 p-lg-0 px-4 px-lg-0 text-uppercase sub-title font-weight-700">Job Listing</span>
                                                    <ul class="sub-menu">
                                                        <li><a href="job-listing.html">Job Listing 1 - Without Sidebar</a></li>
                                                        <li><a href="job-listing-left-sidebar.html">Job Listing 1 - Left Sidebar</a></li>
                                                        <li><a href="job-listing-right-sidebar.html">Job Listing 1 - Right Sidebar</a></li>
                                                        <li><a href="job-listing-2.html">Job Listing 2 - Without Sidebar</a></li>
                                                        <li><a href="job-listing-2-left-sidebar.html">Job Listing 2 - Left Sidebar</a></li>
                                                        <li><a href="job-listing-2-right-sidebar.html">Job Listing 2 - Right Sidebar</a></li>
                                                    </ul>
                                                </li>
                                                <li class="col-lg-4 col-xl-3"><span class="mb-0 mb-lg-3 d-block py-2 p-lg-0 px-4 px-lg-0 text-uppercase sub-title font-weight-700">Job Grid</span>
                                                    <ul class="sub-menu">
                                                        <li><a href="job-grid.html">Job Grid 1 - Without Sidebar</a></li>
                                                        <li><a href="job-grid-left-sidebar.html">Job Grid 1 - Left Sidebar</a></li>
                                                        <li><a href="job-grid-right-sidebar.html">Job Grid 1 - Right Sidebar</a></li>
                                                        <li><a href="job-grid-2.html">Job Grid 2 - Without Sidebar</a></li>
                                                        <li><a href="job-grid-2-left-sidebar.html">Job Grid 2 - Left Sidebar</a></li>
                                                        <li><a href="job-grid-2-right-sidebar.html">Job Grid 2 - Right Sidebar</a></li>
                                                    </ul>
                                                </li>
                                                <li class="col-lg-4 col-xl-3"><span class="mb-0 mb-lg-3 d-block py-2 p-lg-0 px-4 px-lg-0 text-uppercase sub-title font-weight-700">Job Details</span>
                                                    <ul class="sub-menu">
                                                        <li><a href="job-details.html">Job Details 1</a></li>
                                                        <li><a href="job-details-2.html">Job Details 2</a></li>
                                                        <li><a href="job-details-3.html">Job Details 3</a></li>
                                                    </ul>
                                                </li>
                                                <li class="col-lg-3 d-none d-xl-block">
                                                    <div class="menu-slider owl-carousel owl-theme">

                                                        <img src="img/content/menu-slider1.jpg" alt="...">
                                                        <img src="img/content/menu-slider2.jpg" alt="...">
                                                        <img src="img/content/menu-slider3.jpg" alt="...">

                                                    </div>
                                                </li>
                                            </ul>
                                        </li>
                                        <li><a href="#!">Explore</a>
                                            <ul>
                                                <li><a href="#!">Candidates</a>
                                                    <ul>
                                                        <li><a href="candidate-grid.html">Candidate Grid</a></li>
                                                        <li><a href="candidate-list.html">Candidate List</a></li>
                                                        <li><a href="candidate-details.html">Candidate Details</a></li>
                                                        <li><a href="candidate-dashboard.html">Candidate Dashboard</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#!">Employers</a>
                                                    <ul>
                                                        <li><a href="employers-grid.html">Employer Grid</a></li>
                                                        <li><a href="employers-list.html">Employer List</a></li>
                                                        <li><a href="employer-details.html">Employer Details</a></li>
                                                        <li><a href="employer-dashboard.html">Employer Dashboard</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li><a href="#!">Elements</a>
                                            <ul class="row megamenu">
                                                <li class="col-lg-3">
                                                    <span class="mb-0 mb-lg-3 d-block py-2 p-lg-0 px-4 px-lg-0 text-uppercase sub-title font-weight-800 display-30">Elements 01</span>
                                                    <ul>
                                                        <li><a href="accordions.html"><i class="fas fa-sliders-h me-2"></i>Accordions</a></li>
                                                        <li><a href="alerts.html"><i class="far fa-bell me-2"></i>Alerts</a></li>
                                                        <li><a href="blockquote.html"><i class="fas fa-vector-square me-2"></i>Blockquote</a></li>
                                                        <li><a href="buttons.html"><i class="fas fa-link me-2"></i>Buttons</a></li>
                                                        <li><a href="call-to-action.html"><i class="far fa-square me-2"></i>Call to Action</a></li>
                                                        <li><a href="carousel-slider.html"><i class="far fa-images me-2"></i>Carousel Slider</a></li>
                                                    </ul>
                                                </li>
                                                <li class="col-lg-3">
                                                    <span class="mb-0 mb-lg-3 d-block py-2 p-lg-0 px-4 px-lg-0 text-uppercase sub-title font-weight-800 display-30">Elements 02</span>
                                                    <ul>
                                                        <li><a href="count-down.html"><i class="far fa-flag me-2"></i>Count Down</a></li>
                                                        <li><a href="counters.html"><i class="fa-solid fa-bolt me-2"></i>Counters</a></li>
                                                        <li><a href="dropcaps.html"><i class="far fa-closed-captioning me-2"></i>Dropcaps</a></li>
                                                        <li><a href="form-elements.html"><i class="fas fa-cubes me-2"></i>Form Elements</a></li>
                                                        <li><a href="font-icons.html"><i class="far fa-check-square me-2"></i>Font Icons</a></li>
                                                        <li><a href="highlights.html"><i class="fas fa-highlighter me-2"></i>Highlights</a></li>
                                                    </ul>
                                                </li>
                                                <li class="col-lg-3">
                                                    <span class="mb-0 mb-lg-3 d-block py-2 p-lg-0 px-4 px-lg-0 text-uppercase sub-title font-weight-800 display-30">Elements 03</span>
                                                    <ul>
                                                        <li><a href="header-style-01.html"><i class="fas fa-compress me-2"></i>Header Style 01</a></li>
                                                        <li><a href="header-style-02.html"><i class="fas fa-compress-arrows-alt me-2"></i>Header Style 02</a></li>
                                                        <li><a href="icon-with-text.html"><i class="fab fa-fonticons-fi me-2"></i>Icon With Text</a></li>
                                                        <li><a href="list-styles.html"><i class="fas fa-list-ul me-2"></i>List Styles</a></li>
                                                        <li><a href="media-object.html"><i class="fas fa-photo-video me-2"></i>Media Object</a></li>
                                                        <li><a href="modal.html"><i class="fas fa-expand me-2"></i>Modal</a></li>
                                                    </ul>
                                                </li>
                                                <li class="col-lg-3">
                                                    <span class="mb-0 mb-lg-3 d-block py-2 p-lg-0 px-4 px-lg-0 text-uppercase sub-title font-weight-800 display-30">Elements 04</span>
                                                    <ul>
                                                        <li><a href="pagination.html"><i class="far fa-caret-square-right me-2"></i>Pagination</a></li>
                                                        <li><a href="progress-bars.html"><i class="fas fa-tasks me-2"></i>Progress Bars</a></li>
                                                        <li><a href="tables.html"><i class="fas fa-table me-2"></i>Tables</a></li>
                                                        <li><a href="tabs.html"><i class="fa-solid fa-clone me-2"></i>Tabs</a></li>
                                                        <li><a href="typography.html"><i class="fas fa-text-height me-2"></i>Typography</a></li>
                                                        <li><a href="videos.html"><i class="fas fa-video me-2"></i>Videos</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li><a href="#!">Blog</a>
                                            <ul>
                                                <li><a href="blog-grid.html">Blog Grid</a></li>
                                                <li><a href="blog-list.html">Blog List</a></li>
                                                <li><a href="blog-details.html">Blog Details</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                    <!-- end menu area -->

                                    <!-- start attribute navigation -->
                                    <div class="attr-nav align-items-lg-center ms-lg-auto">
                                        <ul>
                                            <li class="search"><a href="Register.jsp"><i class="fas fa-search"></i></a></li>
                                              <li class="d-none d-xl-inline-block"><a href="Register.jsp" class="butn secondary text-white">Login/Register</a></li>
 												                          <li class="d-none d-xl-inline-block"><a href="AdminLogin.jsp" class="butn secondary text-white">Post Job</a></li>
                                        </ul>
                                    </div>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <!-- BANNER
        ================================================== -->
        <section class="banner2">
            <div class="container">
                <div class="row">
                    <div class="content-column col-lg-7">
                        <div class="inner-column pe-xxl-5">
                            <div class="banner-title mb-md-2-5">
                                <h1 class="mb-3">Find Your Dream Jobs</h1>
                                <p class="display-28">3.5 lakh+ jobs for you to explore</p>
                            </div>
                            <!--Start Job Search Form -->
                            <div class="job-search-form">
                                <form action="Register.jsp" method="post" enctype="multipart/form-data" onclick="">
                                    <div class="quform-elements">
                                        <div class="row mt-n3">
                                            <!-- Begin Text input element -->
                                            <div class="col-md-5 mt-3">
                                                <div class="quform-element">
                                                    <div class="quform-input">
                                                        <input id="job-search" class="form-control" type="text" name="job-search" placeholder="Job title, keywords, or company" required />
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- End Text input element -->
                                            <!-- Begin Text input element -->
                                            <div class="col-md-4 mt-3">
                                                <div class="quform-element">
                                                    <div class="quform-input">
                                                        <input id="email" class="form-control" type="text" name="email" placeholder="City or postcode" required />
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- End Text input element -->
                                            <!-- Begin Submit button -->
                                            <div class="col-md-3 mt-4">
                                                <div class="quform-submit-inner">
                                                    <button class="butn" type="submit"><span>Find Jobs</span></button>
                                                </div>
                                                <div class="quform-loading-wrap"><span class="quform-loading"></span></div>
                                            </div>
                                            <!-- End Submit button -->
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <!--End Job Search Form -->
                            <!-- Popular Search -->
                            <div class="popular-searches">
                                <span class="pe-3 font-weight-600">Trending Keywords : </span>
                                <a href="#!">Designer</a>,
                                <a href="#!">Developer</a>,
                                <a href="#!">Web</a>,
                                <a href="#!">IOS</a>,
                                <a href="#!">PHP</a>,
                                <a href="#!">Senior</a>,
                                <a href="#!">Engineer</a>
                            </div>
                            <!-- End Popular Search -->
                        </div>
                    </div>
                    <div class="image-column col-lg-5">
                        <div class="image-box">
                            <div class="row align-items-center">
                                <div class="col-6">
                                    <img src="img/banner/banner-04.jpg" class="border-radius-5" alt="...">
                                </div>
                                <div class="col-6">
                                    <img src="img/banner/banner-02.jpg" class="mb-4 border-radius-5" alt="...">
                                    <img src="img/banner/banner-03.jpg" class="border-radius-5" alt="...">
                                </div>
                            </div>
                           
                            <div class="banner-image-text bottom-text text-center d-none d-sm-block">
                                <h6 class="mb-3">10k+ Candidates</h6>
                                <ul class="list-unstyled users-list m-0">
                                    <li>
                                        <img class="rounded-circle" src="img/avatar/avatar-01.jpg" alt="...">
                                    </li>
                                    <li>
                                        <img class="rounded-circle" src="img/avatar/avatar-02.jpg" alt="...">
                                    </li>
                                    <li>
                                        <img class="rounded-circle" src="img/avatar/avatar-03.jpg" alt="...">
                                    </li>
                                    <li>
                                        <img class="rounded-circle" src="img/avatar/avatar-05.jpg" alt="...">
                                    </li>
                                    <li>
                                        <img class="rounded-circle" src="img/avatar/avatar-06.jpg" alt="...">
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>



        

        <!---all jobs cards-->

       
        <div class="grid-container">
            <div class="job-card">
                <img src="img/IT.jpg" alt="IT" class="job-icon">
                <div class="job-content">
                    <h2 class="job-title">Information Technology</h2>
                    <a href="alljobs.html" class="job-count">24458 Jobs</a>
                </div>
            </div>
            <div class="job-card">
                <img src="img/IT.jpg" alt="Manufacturing" class="job-icon">
                <div class="job-content">
                    <h2 class="job-title">Manufacturing / Engineering</h2>
                    <a href="alljobs.html" class="job-count">6938 Jobs</a>
                </div>
            </div>
            <div class="job-card">
                <img src="https://via.placeholder.com/50?text=BNK" alt="Banking" class="job-icon">
                <div class="job-content">
                    <h2 class="job-title">Banking & Finance</h2>
                    <a href="alljobs.html" class="job-count">3158 Jobs</a>
                </div>
            </div>
            <div class="job-card">
                <img src="https://via.placeholder.com/50?text=SCM" alt="SCM" class="job-icon">
                <div class="job-content">
                    <h2 class="job-title">SCM & Operations/BPO</h2>
                    <a href="alljobs.html" class="job-count">3340 Jobs</a>
                </div>
            </div>
            <div class="job-card">
                <img src="https://via.placeholder.com/50?text=SALES" alt="Sales" class="job-icon">
                <div class="job-content">
                    <h2 class="job-title">Sales & Marketing Jobs</h2>
                    <a href="alljobs.html" class="job-count">7241 Jobs</a>
                </div>
            </div>
            <div class="job-card">
                <img src="https://via.placeholder.com/50?text=ALL" alt="All Jobs" class="job-icon">
                <div class="job-content">
                    <h2 class="job-title">All Jobs</h2>
                    <a href="alljobs.html" class="job-count">76838 Jobs</a>
                </div>
            </div>
        </div>
		
	<div id="contactModal" class="modal">
        <div class="modal-content">
            <span class="close" id="closeModalBtn">&times;</span>
            <h2>Contact Us</h2>
            <form action="Contact" method="post">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" placeholder="Enter your name" required>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" placeholder="Enter your email" required>

                <label for="phone">Phone:</label>
                <input type="text" id="phone" name="phone" placeholder="Enter your phone number" required>

                <label for="message">Message:</label>
                <textarea id="message" name="message" rows="4" placeholder="Enter your message" required></textarea>

                <input type="submit" value="Submit">
            </form>
        </div>
    </div>
    <div  id="contactModal" class="modal">
    
    </div>

	
        <!-- JOB CATEGORIES
        ================================================== -->
        <section>
            <div class="container border-bottom border-color-extra-light-gray mb-6 pb-6">
                <div class="section-heading2">
                    
                    <h2><strong>Top trending</strong> categories</h2>
                </div>
                <div class="job-categories owl-carousel owl-theme">
                    <div class="card card-style5">
                        <div class="categories-img bg-img cover-background min-height-250" data-background="img/content/job-categorie-01.jpg"></div>
                        <div class="card-body">
                            <span class="job-position">02 Jobs</span>
                            <div class="d-flex align-items-center">
                                <div class="flex-shrink-0">
                                    <div class="categories-icon">
                                        <img src="img/icons/icon-12.png" alt="...">
                                    </div>
                                </div>
                                <div class="flex-grow-1 ms-3">
                                    <h4 class="h5 mb-1"><a href="job-listing.html" class="text-white">Accounting</a></h4>
                                    <p class="mb-0 display-30 text-white">Auditor, Financial Analyst & More..</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card card-style5">
                        <div class="categories-img bg-img cover-background min-height-250" data-background="img/content/job-categorie-02.jpg"></div>
                        <div class="card-body">
                            <span class="job-position">86 Jobs</span>
                            <div class="d-flex align-items-center">
                                <div class="flex-shrink-0">
                                    <div class="categories-icon">
                                        <img src="img/icons/icon-13.png" alt="...">
                                    </div>
                                </div>
                                <div class="flex-grow-1 ms-3">
                                    <h4 class="h5 mb-1"><a href="job-listing.html" class="text-white">Marketing</a></h4>
                                    <p class="mb-0 display-30 text-white">Sales, Purchasing & More..</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card card-style5">
                        <div class="categories-img bg-img cover-background min-height-250" data-background="img/content/job-categorie-03.jpg"></div>
                        <div class="card-body">
                            <span class="job-position">20 Jobs</span>
                            <div class="d-flex align-items-center">
                                <div class="flex-shrink-0">
                                    <div class="categories-icon">
                                        <img src="img/icons/icon-14.png" alt="...">
                                    </div>
                                </div>
                                <div class="flex-grow-1 ms-3">
                                    <h4 class="h5 mb-1"><a href="job-listing.html" class="text-white">Customer Service</a></h4>
                                    <p class="mb-0 display-30 text-white">Customer Satisfation, Support & More..</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card card-style5">
                        <div class="categories-img bg-img cover-background min-height-250" data-background="img/content/job-categorie-04.jpg"></div>
                        <div class="card-body">
                            <span class="job-position">12 Jobs</span>
                            <div class="d-flex align-items-center">
                                <div class="flex-shrink-0">
                                    <div class="categories-icon">
                                        <img src="img/icons/icon-15.png" alt="...">
                                    </div>
                                </div>
                                <div class="flex-grow-1 ms-3">
                                    <h4 class="h5 mb-1"><a href="job-listing.html" class="text-white">Development</a></h4>
                                    <p class="mb-0 display-30 text-white">Technology, Coding & More ...</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card card-style5">
                        <div class="categories-img bg-img cover-background min-height-250" data-background="img/content/job-categorie-05.jpg"></div>
                        <div class="card-body">
                            <span class="job-position">55 Jobs</span>
                            <div class="d-flex align-items-center">
                                <div class="flex-shrink-0">
                                    <div class="categories-icon">
                                        <img src="img/icons/icon-16.png" alt="...">
                                    </div>
                                </div>
                                <div class="flex-grow-1 ms-3">
                                    <h4 class="h5 mb-1"><a href="job-listing.html" class="text-white">Construction</a></h4>
                                    <p class="mb-0 display-30 text-white">Civil Engineer, Architect & More..</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card card-style5">
                        <div class="categories-img bg-img cover-background min-height-250" data-background="img/content/job-categorie-06.jpg"></div>
                        <div class="card-body">
                            <span class="job-position">43 Jobs</span>
                            <div class="d-flex align-items-center">
                                <div class="flex-shrink-0">
                                    <div class="categories-icon">
                                        <img src="img/icons/icon-17.png" alt="...">
                                    </div>
                                </div>
                                <div class="flex-grow-1 ms-3">
                                    <h4 class="h5 mb-1"><a href="job-listing.html" class="text-white">Design</a></h4>
                                    <p class="mb-0 display-30 text-white">Branding, web & More..</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row mt-n1-9">
                    <div class="col-sm-6 col-lg-3 mt-1-9 text-center text-sm-start">
                        <div class="d-sm-flex align-items-center">
                            <div class="flex-shrink-0 mb-3 mb-sm-0">
                                <img src="img/icons/icon-09.png" alt="...">
                            </div>
                            <div class="flex-grow-1 border-sm-start border-color-extra-light-gray ps-sm-3 ps-xl-4 ms-sm-3 ms-xl-4">
                                <h3 class="countup h1 text-secondary mb-1">1327</h3>
                                <span class="text-muted">Jobs Posted</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-3 mt-1-9 text-center text-sm-start">
                        <div class="d-sm-flex align-items-center">
                            <div class="flex-shrink-0 mb-3 mb-sm-0">
                                <img src="img/icons/icon-10.png" alt="...">
                            </div>
                            <div class="flex-grow-1 border-sm-start border-color-extra-light-gray ps-sm-3 ps-xl-4 ms-sm-3 ms-xl-4">
                                <h3 class="countup h1 text-secondary mb-1">150</h3>
                                <span class="font-weight-500 text-muted">Jobs Filled</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-3 mt-1-9 text-center text-sm-start">
                        <div class="d-sm-flex align-items-center">
                            <div class="flex-shrink-0 mb-3 mb-sm-0">
                                <img src="img/icons/icon-11.png" alt="...">
                            </div>
                            <div class="flex-grow-1 border-sm-start border-color-extra-light-gray ps-sm-3 ps-xl-4 ms-sm-3 ms-xl-4">
                                <h3 class="countup h1 text-secondary mb-1">220</h3>
                                <span class="font-weight-500 text-muted">Companies</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-3 mt-1-9 text-center text-sm-start">
                        <div class="d-sm-flex align-items-center">
                            <div class="flex-shrink-0 mb-3 mb-sm-0">
                                <img src="img/icons/icon-21.png" alt="...">
                            </div>
                            <div class="flex-grow-1 border-sm-start border-color-extra-light-gray ps-sm-3 ps-xl-4 ms-sm-3 ms-xl-4">
                                <h3 class="countup h1 text-secondary mb-1">2250</h3>
                                <span class="font-weight-500 text-muted">Candidates</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- RECENT JOBS
        ================================================== -->
         <div class="section-heading2">  
          <h2><strong>Latest job</strong> postings</h2>
        </div>
         <section class="yash">
        <div class="card">
            <div class="card-content">
                <h3 class="card-title">Java Developer</h3>
                <p class="card-text"><i class="fas fa-building"></i>Company: Synechron</p>
                <p class="card-text"><i class="fas fa-briefcase"></i>Type: Full Time</p>
                <p class="card-text"><i class="fas fa-map-marker-alt"></i>Location: Bangalore</p>
                <p class="card-text"><i class="fas fa-user-tie"></i>Experience: 2 Years</p>
                <p class="card-text"><i class="fas fa-money-bill-wave"></i>Salary: ₹6,00,000 / Year</p>
                <p class="card-text"><i class="fas fa-clock"></i>Posted On: 10/18/2024, 9:00:00 AM</p>
                <a href="Register.jsp"><button class="card-btn">Apply Now</button></a>
            </div>
        </div>

        <!-- Card 2 -->
        <div class="card">
            <div class="card-content">
                <h3 class="card-title">Python Developer</h3>
                <p class="card-text"><i class="fas fa-building"></i>Company: TCS</p>
                <p class="card-text"><i class="fas fa-briefcase"></i>Type: Full Time</p>
                <p class="card-text"><i class="fas fa-map-marker-alt"></i>Location: Pune</p>
                <p class="card-text"><i class="fas fa-user-tie"></i>Experience: 1 Years</p>
                <p class="card-text"><i class="fas fa-money-bill-wave"></i>Salary: ₹4,50,000 / Year</p>
                <p class="card-text"><i class="fas fa-clock"></i>Posted On: 10/18/2024, 9:00:00 AM</p>
                <a href="Register.jsp"><button class="card-btn">Apply Now</button></a>
            </div>
        </div>

        <!-- Card 3 -->
        <div class="card">
            <div class="card-content">
                <h3 class="card-title">C/C++ Developer</h3>
                <p class="card-text"><i class="fas fa-building"></i>Company: Synechron</p>
                <p class="card-text"><i class="fas fa-briefcase"></i>Type: Full Time</p>
                <p class="card-text"><i class="fas fa-map-marker-alt"></i>Location: Bangalore</p>
                <p class="card-text"><i class="fas fa-user-tie"></i>Experience: 2 Years</p>
                <p class="card-text"><i class="fas fa-money-bill-wave"></i>Salary: ₹6,00,000 / Year</p>
                <p class="card-text"><i class="fas fa-clock"></i>Posted On: 10/18/2024, 9:00:00 AM</p>
                <a href="Register.jsp"><button class="card-btn">Apply Now</button></a>
            </div>
        </div>

        <!-- Card 4 -->
        <div class="card">
            <div class="card-content">
                <h3 class="card-title">Frontend Developer</h3>
                <p class="card-text"><i class="fas fa-building"></i>Company: Synechron</p>
                <p class="card-text"><i class="fas fa-briefcase"></i>Type: Full Time</p>
                <p class="card-text"><i class="fas fa-map-marker-alt"></i>Location: Bangalore</p>
                <p class="card-text"><i class="fas fa-user-tie"></i>Experience: 2 Years</p>
                <p class="card-text"><i class="fas fa-money-bill-wave"></i>Salary: ₹6,00,000 / Year</p>
                <p class="card-text"><i class="fas fa-clock"></i>Posted On: 10/18/2024, 9:00:00 AM</p>
                <a href="Register.jsp"><button class="card-btn">Apply Now</button></a>
            </div>
        </div>

        <!-- Card 5 -->
        <div class="card">
            <div class="card-content">
                <h3 class="card-title">Mern Stack Developer</h3>
                <p class="card-text"><i class="fas fa-building"></i>Company: CGI</p>
                <p class="card-text"><i class="fas fa-briefcase"></i>Type: Remote</p>
                <p class="card-text"><i class="fas fa-map-marker-alt"></i>Location: Pune</p>
                <p class="card-text"><i class="fas fa-user-tie"></i>Experience: 1 Years</p>
                <p class="card-text"><i class="fas fa-money-bill-wave"></i>Salary: ₹6,00,000 / Year</p>
                <p class="card-text"><i class="fas fa-clock"></i>Posted On: 10/18/2024, 9:00:00 AM</p>
                <a href="Register.jsp"><button class="card-btn">Apply Now</button></a>
            </div>
        </div>

        <!-- Card 6 -->
        <div class="card">
            <div class="card-content">
                <h3 class="card-title">Full Stack Java Developer</h3>
                <p class="card-text"><i class="fas fa-building"></i>Company: Infosys</p>
                <p class="card-text"><i class="fas fa-briefcase"></i>Type: WHO</p>
                <p class="card-text"><i class="fas fa-map-marker-alt"></i>Location: Hyderabad</p>
                <p class="card-text"><i class="fas fa-user-tie"></i>Experience: 3 Years</p>
                <p class="card-text"><i class="fas fa-money-bill-wave"></i>Salary: ₹16,00,000 / Year</p>
                <p class="card-text"><i class="fas fa-clock"></i>Posted On: 10/18/2024, 9:00:00 AM</p>
                <a href="Register.jsp"><button class="card-btn">Apply Now</button></a>
            </div>
        </div>
    </section>

        <!-- TOP COMPANY
        ================================================== -->
        
        <!-- OUR PROCESS
        ================================================== -->
        <section class="bg-light">
            <div class="container">
                <div class="section-heading2">
                    
                    <h2><strong>Our working</strong> process</h2>
                </div>
                <div class="row mt-n1-9">
                    <div class="col-sm-6 col-lg-3 mt-1-9">
                        <div class="process-style2 first">
                            <div class="process-arrow">
                                <div class="process-icon-box">
                                    <img src="img/icons/icon-22.png" alt="...">
                                </div>
                                <div class="process-contnet">
                                    <h4 class="h5">01. Create Account</h4>
                                    <p class="mb-0">Sign Up Your Profile</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-3 mt-1-9">
                        <div class="process-style2">
                            <div class="process-arrow">
                                <div class="process-icon-box">
                                    <img src="img/icons/icon-23.png" alt="...">
                                </div>
                                <div class="process-contnet">
                                    <h4 class="h5">02. CV / Resume Upload</h4>
                                    <p class="mb-0">Upload By Category</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-3 mt-1-9">
                        <div class="process-style2">
                            <div class="process-arrow">
                                <div class="process-icon-box">
                                    <img src="img/icons/icon-24.png" alt="...">
                                </div>
                                <div class="process-contnet">
                                    <h4 class="h5">03. Find Vacancy</h4>
                                    <p class="mb-0">Choose A Suitable Job</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-3 mt-1-9">
                        <div class="process-style2 last">
                            <div class="process-arrow">
                                <div class="process-icon-box">
                                    <img src="img/icons/icon-25.png" alt="...">
                                </div>
                                <div class="process-contnet">
                                    <h4 class="h5">04. Apply Them</h4>
                                    <p class="mb-0">Get Personal Job Offer</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

      
        <!-- FOOTER
        ================================================== -->
        <footer class="bg-light">
            <div class="container">
                <div class="row mt-n2-6">
                    <div class="col-sm-6 col-lg-5 mt-2-6">
                        <a href="#!" class="footer-logo"><img src="" class="mb-1-6" alt="..."></a>
                        <p>Advertise your jobs to hundreds of thousands of monthly customers and seek 15.8 million CV in our database.</p>
                        <ul class="contact-list black">
                            <li class="d-flex"><span class="fa fa-home pe-3"></span><a href="#!">Eliora Technologies pvt.ltd</a></li>
                            <li class="d-flex"><span class="fa fa-phone-alt pe-3"></span><a href="#!">(+91) 123 456 789</a></li>
                            <li class="d-flex"><span class="fa fa-envelope pe-3"></span><a href="#!">EioraTechnologies@gmail.com</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-6 col-lg-2 offset-lg-1 mt-2-6">
                        <div class="ps-sm-1-6 ps-lg-0">
                            <h3 class="h5 mb-1-6 mb-lg-1-9">Information</h3>
                            <ul class="footer-list-style2">
                                <li><a href="Register.jsp">About us</a></li>
                                <li><a href="Register.jsp">Blog</a></li>
                                <li><a href="Register.jsp">Our Process</a></li>
                                <li><a href="Register.jsp">Our Pricing</a></li>
                                <li><a href="Register.jsp">Contact Us</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-2 mt-2-6">
                        <h3 class="h5 mb-1-6 mb-lg-1-9">Candidates</h3>
                        <ul class="footer-list-style2">
                            <li><a href="Register.jsp">Applied Job</a></li>
                            <li><a href="Register.jsp">CV Manager</a></li>
                            <li><a href="Register.jsp">Shortlisted Jobs</a></li>
                            <li><a href="Register.jsp">Job Alerts</a></li>
                            <li><a href="Register.jsp">Dashboard</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-6 col-lg-2 mt-2-6">
                        <div class="ps-sm-1-6 ps-lg-0">
                            <h3 class="h5 mb-1-6 mb-lg-1-9">Employers</h3>
                            <ul class="footer-list-style2">
                                <li><a href="Register.jsp">Job Packages</a></li>
                                <li><a href="Register.jsp">Company Profile</a></li>
                                <li><a href="Register.jsp">Manage Job</a></li>
                                <li><a href="Register.jsp">Resume Alerts</a></li>
                                <li><a href="Register.jsp">Post a Job</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-bar bg-white">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <p class="d-inline-block mb-0">&copy; <span class="current-year"></span>  Develop By
                                <a href="https://www.elioratechno.com/" target="_blank" class="text-primary secondary-hover">Eliora Technologies Pvt.Ltd.</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

    </div>
    

    <!-- BUY TEMPLATE
    ================================================== --
    <div class="buy-theme alt-font d-none d-lg-inline-block"><a href="https://wrapbootstrap.com/theme/job-board-job-portal-html-template-WB0S2FC71" target="_blank"><i class="fas fa-cart-plus"></i><span>Buy Template</span></a></div>

    <div class="all-demo alt-font d-none d-lg-inline-block"><a href="https://www.chitrakootweb.com/contact.html" target="_blank"><i class="far fa-envelope"></i><span>Quick Question?</span></a></div>

    <!-- start scroll to top -->
    <a href="#!" class="scroll-to-top"><i class="fas fa-angle-up" aria-hidden="true"></i></a>


    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/core.min.js"></script>
    <script src="search/search.js"></script>
    <script src="js/main.js"></script>
    <script src="quform/js/plugins.js"></script>
    <script src="quform/js/scripts.js"></script>


    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="js/app.js"></script>

      <script>
        // Modal logic
        const modal = document.getElementById("contactModal");
        const btn = document.getElementById("openModalBtn");
        const closeBtn = document.getElementById("closeModalBtn");

        btn.onclick = function () {
            modal.style.display = "block";
        }

        closeBtn.onclick = function () {
            modal.style.display = "none";
        }

        window.onclick = function (event) {
            if (event.target === modal) {
                modal.style.display = "none";
            }
        }
    </script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <% 
    // Get session attributes for the icon and message
    String sessionIcon = (String) session.getAttribute("icon");
    String sessionMessage = (String) session.getAttribute("message");

    // Only show the message if the session attributes are set
    if (sessionIcon != null && sessionMessage != null) {
%>
    <script>
        Swal.fire({
            icon: '<%= sessionIcon %>',
            title: '<%= sessionMessage %>',
            confirmButtonText: 'OK'
        });
    </script>
    <%
        session.removeAttribute("icon");
        session.removeAttribute("message");
    }
%>   
</body>
</html>