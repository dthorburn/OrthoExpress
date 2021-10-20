<!DOCTYPE html>
<!-- saved from url=(0048)https://ourcodingclub.github.io/tutorials/shiny/ -->
<html lang="en-GB" wtx-context="D082D194-8F4F-48CA-86E6-B5AD0C8B4AC3"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><style>.osano-cm-button,.osano-cm--borderless .osano-cm-button{border:none;box-shadow:1px 1px 3px rgba(100,100,100,0.7)}.osano-cm-button{background-color:rgba(243,228,126,0.9);border-color:#111010;color:#111010}.osano-cm-button:focus,.osano-cm-button:hover{background:rgba(240,220,89,0.9);outline:none}.osano-cm-toggle__switch{background-color:#ddd8d8}.osano-cm-toggle__switch::after{background-color:#fff}.osano-cm-toggle__checkbox:disabled+.osano-cm-toggle__switch,.osano-cm-toggle__checkbox:focus:disabled+.osano-cm-toggle__switch,.osano-cm-toggle__checkbox:hover:disabled+.osano-cm-toggle__switch{background-color:#a29494}.osano-cm-toggle__checkbox:disabled+.osano-cm-toggle__switch::after,.osano-cm-toggle__checkbox:focus:disabled+.osano-cm-toggle__switch::after,.osano-cm-toggle__checkbox:hover:disabled+.osano-cm-toggle__switch::after{background-color:#bfbfbf}.osano-cm-toggle__checkbox:focus+.osano-cm-toggle__switch,.osano-cm-toggle__checkbox:hover+.osano-cm-toggle__switch{background-color:#cac2c2}.osano-cm-toggle__checkbox:focus+.osano-cm-toggle__switch::after,.osano-cm-toggle__checkbox:hover+.osano-cm-toggle__switch::after{background-color:#ebebeb}.osano-cm-toggle__checkbox:checked+.osano-cm-toggle__switch{background-color:#98d9c9}.osano-cm-toggle__checkbox:checked+.osano-cm-toggle__switch::after{background-color:#f4f4f4}.osano-cm-toggle__checkbox:disabled:checked+.osano-cm-toggle__switch,.osano-cm-toggle__checkbox:disabled:checked:focus+.osano-cm-toggle__switch,.osano-cm-toggle__checkbox:disabled:checked:hover+.osano-cm-toggle__switch{background-color:#41b095}.osano-cm-toggle__checkbox:disabled:checked+.osano-cm-toggle__switch::after,.osano-cm-toggle__checkbox:disabled:checked:focus+.osano-cm-toggle__switch::after,.osano-cm-toggle__checkbox:disabled:checked:hover+.osano-cm-toggle__switch::after{background-color:#b4b4b4}.osano-cm-toggle__checkbox:focus:checked+.osano-cm-toggle__switch,.osano-cm-toggle__checkbox:hover:checked+.osano-cm-toggle__switch{background-color:#7aceb9}.osano-cm-toggle__checkbox:focus:checked+.osano-cm-toggle__switch::after,.osano-cm-toggle__checkbox:hover:checked+.osano-cm-toggle__switch::after{background-color:#e0e0e0}.osano-cm-deny{background:rgba(243,228,126,0.9);color:#151414}.osano-cm-link,.osano-cm-disclosure__toggle{color:#b5e5e1}.osano-cm-link:hover,.osano-cm-disclosure__toggle:hover,.osano-cm-link:active,.osano-cm-disclosure__toggle:active{color:#b5e5e1;outline:none}.osano-cm-link:focus,.osano-cm-disclosure__toggle:focus{color:#97dad5;outline:none}.osano-cm-disclosure__list:first-of-type::after{background-color:#b5e5e1}.osano-cm-window{font-size:16px;font-family:Helvetica, Arial, 'Hiragino Sans GB', STXihei, 'Microsoft YaHei', 'WenQuanYi Micro Hei', Hind, 'MS Gothic', 'Apple SD Gothic Neo', 'NanumBarunGothic', sans-serif;font-smooth:always;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothingz:auto;display:block;z-index:2147483638;line-height:1;width:100%}.osano-cm-button,.osano-cm--borderless .osano-cm-button{border:none;box-shadow:1px 1px 3px rgba(100,100,100,0.7)}.osano-cm-button{background-color:rgba(243,228,126,0.9);border-color:#111010;color:#111010}.osano-cm-button:focus,.osano-cm-button:hover{background:rgba(240,220,89,0.9);outline:none}.osano-cm-toggle__switch{background-color:#ddd8d8}.osano-cm-toggle__switch::after{background-color:#fff}.osano-cm-toggle__checkbox:disabled+.osano-cm-toggle__switch,.osano-cm-toggle__checkbox:focus:disabled+.osano-cm-toggle__switch,.osano-cm-toggle__checkbox:hover:disabled+.osano-cm-toggle__switch{background-color:#a29494}.osano-cm-toggle__checkbox:disabled+.osano-cm-toggle__switch::after,.osano-cm-toggle__checkbox:focus:disabled+.osano-cm-toggle__switch::after,.osano-cm-toggle__checkbox:hover:disabled+.osano-cm-toggle__switch::after{background-color:#bfbfbf}.osano-cm-toggle__checkbox:focus+.osano-cm-toggle__switch,.osano-cm-toggle__checkbox:hover+.osano-cm-toggle__switch{background-color:#cac2c2}.osano-cm-toggle__checkbox:focus+.osano-cm-toggle__switch::after,.osano-cm-toggle__checkbox:hover+.osano-cm-toggle__switch::after{background-color:#ebebeb}.osano-cm-toggle__checkbox:checked+.osano-cm-toggle__switch{background-color:#98d9c9}.osano-cm-toggle__checkbox:checked+.osano-cm-toggle__switch::after{background-color:#f4f4f4}.osano-cm-toggle__checkbox:disabled:checked+.osano-cm-toggle__switch,.osano-cm-toggle__checkbox:disabled:checked:focus+.osano-cm-toggle__switch,.osano-cm-toggle__checkbox:disabled:checked:hover+.osano-cm-toggle__switch{background-color:#41b095}.osano-cm-toggle__checkbox:disabled:checked+.osano-cm-toggle__switch::after,.osano-cm-toggle__checkbox:disabled:checked:focus+.osano-cm-toggle__switch::after,.osano-cm-toggle__checkbox:disabled:checked:hover+.osano-cm-toggle__switch::after{background-color:#b4b4b4}.osano-cm-toggle__checkbox:focus:checked+.osano-cm-toggle__switch,.osano-cm-toggle__checkbox:hover:checked+.osano-cm-toggle__switch{background-color:#7aceb9}.osano-cm-toggle__checkbox:focus:checked+.osano-cm-toggle__switch::after,.osano-cm-toggle__checkbox:hover:checked+.osano-cm-toggle__switch::after{background-color:#e0e0e0}.osano-cm-deny{background:rgba(243,228,126,0.9);color:#151414}.osano-cm-link,.osano-cm-disclosure__toggle{color:#b5e5e1}.osano-cm-link:hover,.osano-cm-disclosure__toggle:hover,.osano-cm-link:active,.osano-cm-disclosure__toggle:active{color:#b5e5e1;outline:none}.osano-cm-link:focus,.osano-cm-disclosure__toggle:focus{color:#97dad5;outline:none}.osano-cm-disclosure__list:first-of-type::after{background-color:#b5e5e1}.osano-cm-link{cursor:pointer;text-decoration:underline;transition-duration:200ms;transition-property:color;transition-timing-function:ease-out}.osano-cm-button,.osano-cm--borderless .osano-cm-button{border:none;box-shadow:1px 1px 3px rgba(100,100,100,0.7)}.osano-cm-button{background-color:rgba(243,228,126,0.9);border-color:#111010;color:#111010}.osano-cm-button:focus,.osano-cm-button:hover{background:rgba(240,220,89,0.9);outline:none}.osano-cm-toggle__switch{background-color:#ddd8d8}.osano-cm-toggle__switch::after{background-color:#fff}.osano-cm-toggle__checkbox:disabled+.osano-cm-toggle__switch,.osano-cm-toggle__checkbox:focus:disabled+.osano-cm-toggle__switch,.osano-cm-toggle__checkbox:hover:disabled+.osano-cm-toggle__switch{background-color:#a29494}.osano-cm-toggle__checkbox:disabled+.osano-cm-toggle__switch::after,.osano-cm-toggle__checkbox:focus:disabled+.osano-cm-toggle__switch::after,.osano-cm-toggle__checkbox:hover:disabled+.osano-cm-toggle__switch::after{background-color:#bfbfbf}.osano-cm-toggle__checkbox:focus+.osano-cm-toggle__switch,.osano-cm-toggle__checkbox:hover+.osano-cm-toggle__switch{background-color:#cac2c2}.osano-cm-toggle__checkbox:focus+.osano-cm-toggle__switch::after,.osano-cm-toggle__checkbox:hover+.osano-cm-toggle__switch::after{background-color:#ebebeb}.osano-cm-toggle__checkbox:checked+.osano-cm-toggle__switch{background-color:#98d9c9}.osano-cm-toggle__checkbox:checked+.osano-cm-toggle__switch::after{background-color:#f4f4f4}.osano-cm-toggle__checkbox:disabled:checked+.osano-cm-toggle__switch,.osano-cm-toggle__checkbox:disabled:checked:focus+.osano-cm-toggle__switch,.osano-cm-toggle__checkbox:disabled:checked:hover+.osano-cm-toggle__switch{background-color:#41b095}.osano-cm-toggle__checkbox:disabled:checked+.osano-cm-toggle__switch::after,.osano-cm-toggle__checkbox:disabled:checked:focus+.osano-cm-toggle__switch::after,.osano-cm-toggle__checkbox:disabled:checked:hover+.osano-cm-toggle__switch::after{background-color:#b4b4b4}.osano-cm-toggle__checkbox:focus:checked+.osano-cm-toggle__switch,.osano-cm-toggle__checkbox:hover:checked+.osano-cm-toggle__switch{background-color:#7aceb9}.osano-cm-toggle__checkbox:focus:checked+.osano-cm-toggle__switch::after,.osano-cm-toggle__checkbox:hover:checked+.osano-cm-toggle__switch::after{background-color:#e0e0e0}.osano-cm-deny{background:rgba(243,228,126,0.9);color:#151414}.osano-cm-link,.osano-cm-disclosure__toggle{color:#b5e5e1}.osano-cm-link:hover,.osano-cm-disclosure__toggle:hover,.osano-cm-link:active,.osano-cm-disclosure__toggle:active{color:#b5e5e1;outline:none}.osano-cm-link:focus,.osano-cm-disclosure__toggle:focus{color:#97dad5;outline:none}.osano-cm-disclosure__list:first-of-type::after{background-color:#b5e5e1}.osano-cm-button{border-width:thin;border-style:solid;border-radius:0.25em;font-weight:bold;font-size:1em;padding:0.5em 0.75em;margin:0.125em;line-height:1;flex:1 1 auto;min-width:6em;cursor:pointer;transition-duration:200ms;transition-property:background-color;transition-timing-function:ease-out;flex:none;margin:0.125em auto;width:80%}@media screen and (min-width: 768px){.osano-cm-button{flex:1 1 auto;width:auto;margin:0.25em 0.5em}}.osano-cm-button,.osano-cm--borderless .osano-cm-button{border:none;box-shadow:1px 1px 3px rgba(100,100,100,0.7)}.osano-cm-button{background-color:rgba(243,228,126,0.9);border-color:#111010;color:#111010}.osano-cm-button:focus,.osano-cm-button:hover{background:rgba(240,220,89,0.9);outline:none}.osano-cm-toggle__switch{background-color:#ddd8d8}.osano-cm-toggle__switch::after{background-color:#fff}.osano-cm-toggle__checkbox:disabled+.osano-cm-toggle__switch,.osano-cm-toggle__checkbox:focus:disabled+.osano-cm-toggle__switch,.osano-cm-toggle__checkbox:hover:disabled+.osano-cm-toggle__switch{background-color:#a29494}.osano-cm-toggle__checkbox:disabled+.osano-cm-toggle__switch::after,.osano-cm-toggle__checkbox:focus:disabled+.osano-cm-toggle__switch::after,.osano-cm-toggle__checkbox:hover:disabled+.osano-cm-toggle__switch::after{background-color:#bfbfbf}.osano-cm-toggle__checkbox:focus+.osano-cm-toggle__switch,.osano-cm-toggle__checkbox:hover+.osano-cm-toggle__switch{background-color:#cac2c2}.osano-cm-toggle__checkbox:focus+.osano-cm-toggle__switch::after,.osano-cm-toggle__checkbox:hover+.osano-cm-toggle__switch::after{background-color:#ebebeb}.osano-cm-toggle__checkbox:checked+.osano-cm-toggle__switch{background-color:#98d9c9}.osano-cm-toggle__checkbox:checked+.osano-cm-toggle__switch::after{background-color:#f4f4f4}.osano-cm-toggle__checkbox:disabled:checked+.osano-cm-toggle__switch,.osano-cm-toggle__checkbox:disabled:checked:focus+.osano-cm-toggle__switch,.osano-cm-toggle__checkbox:disabled:checked:hover+.osano-cm-toggle__switch{background-color:#41b095}.osano-cm-toggle__checkbox:disabled:checked+.osano-cm-toggle__switch::after,.osano-cm-toggle__checkbox:disabled:checked:focus+.osano-cm-toggle__switch::after,.osano-cm-toggle__checkbox:disabled:checked:hover+.osano-cm-toggle__switch::after{background-color:#b4b4b4}.osano-cm-toggle__checkbox:focus:checked+.osano-cm-toggle__switch,.osano-cm-toggle__checkbox:hover:checked+.osano-cm-toggle__switch{background-color:#7aceb9}.osano-cm-toggle__checkbox:focus:checked+.osano-cm-toggle__switch::after,.osano-cm-toggle__checkbox:hover:checked+.osano-cm-toggle__switch::after{background-color:#e0e0e0}.osano-cm-deny{background:rgba(243,228,126,0.9);color:#151414}.osano-cm-link,.osano-cm-disclosure__toggle{color:#b5e5e1}.osano-cm-link:hover,.osano-cm-disclosure__toggle:hover,.osano-cm-link:active,.osano-cm-disclosure__toggle:active{color:#b5e5e1;outline:none}.osano-cm-link:focus,.osano-cm-disclosure__toggle:focus{color:#97dad5;outline:none}.osano-cm-disclosure__list:first-of-type::after{background-color:#b5e5e1}.osano-cm-toggle{align-items:center;display:flex;justify-content:flex-start;margin:0.25em 0;position:relative}.osano-cm-toggle__label{margin:0 0.5em}.osano-cm-toggle__switch{color:transparent;line-height:0;text-indent:-9999px;width:44px;height:22px;display:block;border-radius:10px;position:relative;transition-duration:200ms;transition-property:background-color;transition-timing-function:ease-out}.osano-cm-toggle__switch:hover{cursor:pointer}.osano-cm-toggle__switch::after{content:'';position:absolute;top:2px;left:2px;width:18px;height:18px;border-radius:9px;transition:0.3s}.osano-cm-toggle__switch::after:active{width:26px;transition:0.1s}.osano-cm-toggle__checkbox{height:1px;width:1px;margin:-1px;opacity:0;position:absolute}.osano-cm-toggle__checkbox:checked+.osano-cm-toggle__switch::after{left:calc(100% - 2px);transform:translateX(-100%)}.osano-cm-toggle__checkbox:disabled{cursor:default}.osano-cm-toggle__checkbox:disabled+.osano-cm-toggle__switch{cursor:default}.osano-cm-dialog{box-sizing:border-box;font-size:1em;line-height:1.25;align-items:center;background:rgba(76,60,83,0.9);color:#fff;position:fixed;z-index:2147483637;padding:1.5em;overflow:auto;transition-property:opacity, visibility;transition-duration:700ms, 700ms;transition-delay:0ms, 0ms;visibility:visible;display:flex;flex-direction:column;box-sizing:border-box;right:0;left:0;bottom:0;box-shadow:0 4px 8px rgba(0,0,0,0.9)}.osano-cm-dialog--hidden{opacity:0;transition-delay:0ms, 700ms;visibility:hidden}@media screen and (min-width: 768px){.osano-cm-dialog{flex-direction:row}}.osano-cm-dialog-list{margin:0.5em 0 0 0;padding:0;display:flex;flex-direction:column;flex-wrap:wrap;justify-content:flex-start;margin:0.75em auto}@media screen and (min-width: 376px){.osano-cm-dialog-list{flex-direction:row}}@media screen and (min-width: 768px){.osano-cm-dialog-list{margin:0.5em 0 0 auto}}.osano-cm-dialog-list__item{display:flex;margin-top:0;margin-right:0.5em}.osano-cm-dialog-list__item:last-child{margin-bottom:0}.osano-cm-dialog-list__label{margin-left:0.375em;white-space:nowrap;padding-top:0}.osano-cm-dialog__content{flex:5;margin-bottom:0.25em}.osano-cm-storage-policy{display:inline-block;padding:0 0.125em;text-transform:capitalize}.osano-cm-buttons{display:flex;flex-wrap:wrap;flex:1;justify-content:flex-end;width:100%;margin:0}@media screen and (min-width: 768px){.osano-cm-buttons{width:auto;margin:0 0 0 0.5em}}.osano-cm-widget{cursor:pointer;position:fixed;background:none;border:none;bottom:12px;z-index:2147483636;width:40px;height:40px;opacity:0.9;outline:none;padding:0;transition-property:transform, opacity, visibility;transition-duration:100ms, 400ms, 0ms;transition-delay:0ms, 0ms, 0ms;visibility:visible;right:12px}.osano-cm-widget:focus,.osano-cm-widget:hover{opacity:1;transform:scale(1.1)}.osano-cm-widget--hidden{opacity:0;transition-delay:0ms, 0ms, 400ms;visibility:hidden}.osano-cm-widget--hidden:focus,.osano-cm-widget--hidden:hover{opacity:0;transform:scale(1)}.osano-cm-info-dialog-wrapper{position:fixed;top:0;left:0;width:100vw;height:100vh;background:rgba(0,0,0,0.458824);z-index:2147483638;transition-property:opacity, visibility;transition-duration:200ms, 0ms;transition-delay:0ms, 0ms;visibility:visible}.osano-cm-info-dialog-wrapper--hidden{opacity:0;transition-delay:0ms, 200ms;visibility:hidden}.osano-cm-info__button{font-size:0.875em;width:100%;margin:1em 0 0}.osano-cm-info-dialog{box-sizing:border-box;position:fixed;top:0;background:rgba(47,47,50,0.87);color:#f1f5f4;max-width:20em;height:100vh;transition-property:transform;transition-duration:400ms;padding:1em 0.75em;box-shadow:0 0 2px 2px #ccc;overflow-x:hidden;overflow-y:auto;right:0;transform:translate(100%, 0)}.osano-cm-info-dialog--open{transform:translate(0, 0)}.osano-cm-info-dialog__header{margin:0.25em 0 1em}.osano-cm-info-dialog__header-title{font-size:1em;margin:0 0 1em 0;padding:0.25em 0}.osano-cm-info-dialog__header-description{font-size:0.75em;line-height:1.375}.osano-cm-info-dialog .osano-cm-toggle{flex-direction:row-reverse;justify-content:space-between}.osano-cm-info-dialog .osano-cm-toggle__label{font-size:0.875em;margin:0}.osano-cm-info-dialog-close{cursor:pointer;float:right;text-decoration:none;border:none;padding:0;transition:transform 200ms ease-out;transform:rotate(0deg);margin:0;outline:none}.osano-cm-info-dialog-close .x{transition-property:fill;transition-duration:200ms;transition-timing-function:ease-out;fill:#f1f5f4}.osano-cm-info-dialog-close:focus{transform:rotate(90deg)}.osano-cm-info-dialog-close:focus .x{fill:#fff}.osano-cm-info-dialog-close:hover{transform:rotate(90deg)}.osano-cm-info-dialog-close:hover .x{fill:#fff}.osano-cm-info-list{list-style-type:none;margin:0;padding:0}.osano-cm-info-list__item{margin:1em 0 0;padding:0}.osano-cm-info-list__item-description{font-size:0.75em;font-weight:300;line-height:1.375;margin:1em 0 0}.osano-cm-powered-by{align-items:center;display:flex;flex-direction:column;justify-content:center;margin:1em 0 0}.osano-cm-powered-by__link{font-size:0.625em;text-decoration:none}.osano-cm-button,.osano-cm--borderless .osano-cm-button{border:none;box-shadow:1px 1px 3px rgba(100,100,100,0.7)}.osano-cm-button{background-color:rgba(243,228,126,0.9);border-color:#111010;color:#111010}.osano-cm-button:focus,.osano-cm-button:hover{background:rgba(240,220,89,0.9);outline:none}.osano-cm-toggle__switch{background-color:#ddd8d8}.osano-cm-toggle__switch::after{background-color:#fff}.osano-cm-toggle__checkbox:disabled+.osano-cm-toggle__switch,.osano-cm-toggle__checkbox:focus:disabled+.osano-cm-toggle__switch,.osano-cm-toggle__checkbox:hover:disabled+.osano-cm-toggle__switch{background-color:#a29494}.osano-cm-toggle__checkbox:disabled+.osano-cm-toggle__switch::after,.osano-cm-toggle__checkbox:focus:disabled+.osano-cm-toggle__switch::after,.osano-cm-toggle__checkbox:hover:disabled+.osano-cm-toggle__switch::after{background-color:#bfbfbf}.osano-cm-toggle__checkbox:focus+.osano-cm-toggle__switch,.osano-cm-toggle__checkbox:hover+.osano-cm-toggle__switch{background-color:#cac2c2}.osano-cm-toggle__checkbox:focus+.osano-cm-toggle__switch::after,.osano-cm-toggle__checkbox:hover+.osano-cm-toggle__switch::after{background-color:#ebebeb}.osano-cm-toggle__checkbox:checked+.osano-cm-toggle__switch{background-color:#98d9c9}.osano-cm-toggle__checkbox:checked+.osano-cm-toggle__switch::after{background-color:#f4f4f4}.osano-cm-toggle__checkbox:disabled:checked+.osano-cm-toggle__switch,.osano-cm-toggle__checkbox:disabled:checked:focus+.osano-cm-toggle__switch,.osano-cm-toggle__checkbox:disabled:checked:hover+.osano-cm-toggle__switch{background-color:#41b095}.osano-cm-toggle__checkbox:disabled:checked+.osano-cm-toggle__switch::after,.osano-cm-toggle__checkbox:disabled:checked:focus+.osano-cm-toggle__switch::after,.osano-cm-toggle__checkbox:disabled:checked:hover+.osano-cm-toggle__switch::after{background-color:#b4b4b4}.osano-cm-toggle__checkbox:focus:checked+.osano-cm-toggle__switch,.osano-cm-toggle__checkbox:hover:checked+.osano-cm-toggle__switch{background-color:#7aceb9}.osano-cm-toggle__checkbox:focus:checked+.osano-cm-toggle__switch::after,.osano-cm-toggle__checkbox:hover:checked+.osano-cm-toggle__switch::after{background-color:#e0e0e0}.osano-cm-deny{background:rgba(243,228,126,0.9);color:#151414}.osano-cm-link,.osano-cm-disclosure__toggle{color:#b5e5e1}.osano-cm-link:hover,.osano-cm-disclosure__toggle:hover,.osano-cm-link:active,.osano-cm-disclosure__toggle:active{color:#b5e5e1;outline:none}.osano-cm-link:focus,.osano-cm-disclosure__toggle:focus{color:#97dad5;outline:none}.osano-cm-disclosure__list:first-of-type::after{background-color:#b5e5e1}.osano-cm-script-disclosure__title,.osano-cm-cookie-disclosure__title{display:block;flex:0 1 30%;clear:both;font-weight:bold}.osano-cm-script-disclosure__description,.osano-cm-cookie-disclosure__description{font-size:0.875em;margin:0 0 0.5em;flex:0 1 70%}.osano-cm-disclosure{font-size:0.75em;margin:0 -1.5em 0;padding:1.5em 1.5em 0}.osano-cm-disclosure:not([open]),.osano-cm-disclosure--collapse{border-bottom:1px solid rgba(0,0,0,0.1);margin-bottom:0;padding-bottom:1em}.osano-cm-disclosure[open]{border-bottom:none;margin-bottom:0;padding-bottom:0}.osano-cm-disclosure__list{line-height:1.25;list-style:none;margin:0 -1.5em 0;padding:1.25em 1.5em 1em;background-color:rgba(0,0,0,0.1)}.osano-cm-disclosure__list:empty{border:none;padding:0 1.5em}.osano-cm-disclosure__list:first-of-type{margin-top:1em;padding:1.25em 1.5em 1em}.osano-cm-disclosure__list:first-of-type::after{content:'';display:block;transform:translate(0, -50%);width:1em;height:1em;border-radius:100%;animation-name:osano-load-scale;animation-duration:1s;animation-iteration-count:infinite;animation-timing-function:ease-in-out}.osano-cm-disclosure__list:first-of-type:empty{padding:1.75em 1.5em 0.75em}.osano-cm-disclosure__list:not(:first-of-type):not(:empty){border-top:1px solid rgba(0,0,0,0.1)}.osano-cm-disclosure__list:empty+.osano-cm-disclosure__list:not(:empty){border:none;padding:0 1.5em}.osano-cm-disclosure__list:not(:empty) ~ .osano-cm-disclosure__list:empty+.osano-cm-disclosure__list:not(:empty){border-top:1px solid rgba(0,0,0,0.1)}.osano-cm-disclosure__list-item{line-height:1.25}.osano-cm-disclosure__list-item:not(:first-of-type){border-top:1px solid rgba(0,0,0,0.1);margin:1em -1.25em 0;padding:1em 1.25em 0}.osano-cm-disclosure__toggle{cursor:pointer;line-height:1.25;position:relative}.osano-cm-disclosure--loaded .osano-cm-disclosure__list::after{content:none}.osano-cm-disclosure--collapse .osano-cm-disclosure__list::after,.osano-cm-disclosure:not([open]) .osano-cm-disclosure__list::after{content:none}.osano-cm-script-disclosure,.osano-cm-cookie-disclosure{display:flex;flex-wrap:wrap;margin:0}@keyframes osano-load-scale{0%{transform:translate(0, -50%) scale(0)}100%{transform:translate(0, -50%) scale(1);opacity:0}}
</style>
    	
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Getting Started with Shiny</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- CSS -->
<link rel="stylesheet" href="./app_files/main.css">
<link rel="stylesheet" href="./app_files/owl.carousel.css">
<link rel="stylesheet" href="./app_files/ionicons.min.css">
<link rel="stylesheet" href="./app_files/font-awesome.min.css">
<link rel="stylesheet" href="./app_files/animate.css">


<!-- JS -->
<script src="./app_files/osano.js.download"></script>
<script src="./app_files/jquery-1.12.4.js.download"></script>
<script src="./app_files/jquery-ui.js.download"></script>
<script src="./app_files/accordion.js.download"></script>
<script src="./app_files/owl.carousel.min.js.download"></script>
<script src="./app_files/jquery.counterup.js.download"></script>
<script src="./app_files/waypoints.min.js.download"></script>
<script src="./app_files/ticker.js.download"></script>
<script src="./app_files/bootstrap.min.js.download"></script>
<script src="./app_files/owl.carousel.js.download"></script>
<script src="./app_files/owl.carousel.init.js.download"></script>
	</head>
	<body><div class="osano-cm-window"><div role="dialog" aria-live="polite" aria-label="Consent Manager by Osano" aria-describedby="osano-id-cm-dialog" class="osano-cm-dialog">
      <!--googleoff: all-->
      <div class="osano-cm-dialog__content osano-cm-content">
        <span id="osano-id-cm-dialog" class="osano-cm-content__message osano-cm-message">This website stores data such as cookies to enable important site functionality including analytics, targeting, and personalization. You may alter your preferences at any time or accept the default settings.</span>
        <a href="https://ourcodingclub.github.io/privacy" class="osano-cm-content__link osano-cm-link osano-cm-storage-policy" target="_blank">data storage policy</a>
        
  <ul class="osano-cm-dialog-list">
    <li class="osano-cm-dialog-list__item">
      
    <label class="osano-cm-toggle" title="" for="ed3ca03c-0dbc-47b2-b8e2-6f46bed677f9">
        <input class="osano-cm-toggle__checkbox" data-category="MARKETING" id="ed3ca03c-0dbc-47b2-b8e2-6f46bed677f9" type="checkbox" wtx-context="8AD2C792-340B-4667-82E6-E13EA4EAEDE0">
        <span class="osano-cm-toggle__switch"></span>
        <span class="osano-cm-toggle__label osano-cm-label">Marketing</span>
    </label>
    
    </li>
    <li class="osano-cm-dialog-list__item">
      
    <label class="osano-cm-toggle" title="" for="28389b64-3776-4dcb-b2ca-ad70f3318ce4">
        <input class="osano-cm-toggle__checkbox" data-category="PERSONALIZATION" id="28389b64-3776-4dcb-b2ca-ad70f3318ce4" type="checkbox" wtx-context="6CC56549-E5C6-44B0-8E07-9F9347DD98A9">
        <span class="osano-cm-toggle__switch"></span>
        <span class="osano-cm-toggle__label osano-cm-label">Personalization</span>
    </label>
    
    </li>
    <li class="osano-cm-dialog-list__item">
      
    <label class="osano-cm-toggle" title="" for="a049f98c-cfd6-4e58-ae4a-22dcedee7201">
        <input class="osano-cm-toggle__checkbox" data-category="ANALYTICS" id="a049f98c-cfd6-4e58-ae4a-22dcedee7201" type="checkbox" wtx-context="1FFB2A76-B84D-4A2C-84D4-3CB32560E729">
        <span class="osano-cm-toggle__switch"></span>
        <span class="osano-cm-toggle__label osano-cm-label">Analytics</span>
    </label>
    
    </li>
  </ul>

      </div>
      <div class="osano-cm-buttons"><button class="osano-cm-button osano-cm-save">Save</button><button class="osano-cm-button osano-cm-accept-all">Accept All</button></div>
      <!--googleon: all-->
  </div><button class="osano-cm-widget osano-cm-widget--hidden" title="Storage Preferences" aria-label="Storage Preferences">
    <svg width="40" height="40" viewBox="0 0 71.85 72.23" xmlns="http://www.w3.org/2000/svg"><path d="m67.6 36.73a6.26 6.26 0 0 1 -3.2-2.8 5.86 5.86 0 0 0 -5.2-3.1h-.3a11 11 0 0 1 -11.4-9.5 6 6 0 0 1 -.1-1.4 9.2 9.2 0 0 1 .4-2.9 8.65 8.65 0 0 0 .2-1.6 5.38 5.38 0 0 0 -1.9-4.3 7.3 7.3 0 0 1 -2.5-5.5 3.91 3.91 0 0 0 -3.5-3.9 36.46 36.46 0 0 0 -15 1.5 33.14 33.14 0 0 0 -22.1 22.7 35.62 35.62 0 0 0 -1.5 10.2 34.07 34.07 0 0 0 4.8 17.6.75.75 0 0 0 .07.12c.11.17 1.22 1.39 2.68 3-.36.47 5.18 6.16 5.65 6.52a34.62 34.62 0 0 0 55.6-21.9 4.38 4.38 0 0 0 -2.7-4.74z" fill="#fff" stroke="#29246a" stroke-width="3"></path><path d="m68 41.13a32.37 32.37 0 0 1 -52 20.5l-2-1.56c-2.5-3.28-5.62-7.15-5.81-7.44a32 32 0 0 1 -4.5-16.5 34.3 34.3 0 0 1 1.4-9.6 30.56 30.56 0 0 1 20.61-21.13 33.51 33.51 0 0 1 14.1-1.4 1.83 1.83 0 0 1 1.6 1.8 9.38 9.38 0 0 0 3.3 7.1 3.36 3.36 0 0 1 1.2 2.6 3.37 3.37 0 0 1 -.1 1 12.66 12.66 0 0 0 -.5 3.4 9.65 9.65 0 0 0 .1 1.7 13 13 0 0 0 10.5 11.2 16.05 16.05 0 0 0 3.1.2 3.84 3.84 0 0 1 3.5 2 10 10 0 0 0 4.1 3.83 2 2 0 0 1 1.4 2z" fill="#fff" stroke="#29246a" stroke-width="3"></path><g fill="#37cd8f"><path d="m26.6 31.43a5.4 5.4 0 1 1 5.4-5.43 5.38 5.38 0 0 1 -5.33 5.43z"></path><path d="m25.2 53.13a5.4 5.4 0 1 1 5.4-5.4 5.44 5.44 0 0 1 -5.4 5.4z"></path><path d="m47.9 52.33a5.4 5.4 0 1 1 5.4-5.4 5.32 5.32 0 0 1 -5.24 5.4z"></path></g></svg>
  </button><div class="osano-cm-info-dialog-wrapper osano-cm-info-dialog-wrapper--hidden">
    <div class="osano-cm-info-dialog">
      <div class="osano-cm-info-dialog__header">
        <button class="osano-cm-info-dialog-close" tabindex="0">
          <svg aria-role="button" width="20px" height="20px" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 25 25">
              <title>Close Icon</title>
              <polygon class="x" points="25 0.71 24.29 0 12.5 11.79 0.71 0 0 0.71 11.79 12.5 0 24.29 0.71 25 12.5 13.21 24.29 25 25 24.29 13.21 12.5 25 0.71"></polygon>
          </svg>
        </button>
        <p class="osano-cm-info-dialog__header-title">Storage Preferences</p>
        <p class="osano-cm-info-dialog__header-description">When you visit web sites, they may store or retrieve data in your web browser. This storage is often necessary for basic functionality of the web site or the storage may be used for the purposes of marketing, analytics, and personalization of the web site such as storing your preferences. Privacy is important to us so you have the option of disabling certain types of storage that may not be necessary to the basic functioning of the web site. Blocking categories may impact your experience on the web site.</p>
      </div>
      <ul class="osano-cm-info-list">
        <li class="osano-cm-info-list__item">
            
    <label class="osano-cm-toggle" title="Locked: Please read description." for="4fa9356e-b03d-4644-bf0a-54d85e6df1ed">
        <input class="osano-cm-toggle__checkbox" data-category="ESSENTIAL" id="4fa9356e-b03d-4644-bf0a-54d85e6df1ed" type="checkbox" checked="" disabled="" wtx-context="5C6D7243-0F47-48F7-8A6E-C1285E810CF3">
        <span class="osano-cm-toggle__switch"></span>
        <span class="osano-cm-toggle__label osano-cm-label">Strictly Necessary</span>
    </label>
    
          <div class="osano-cm-description osano-cm-info-list__item-description">
            Essential in order to enable you to navigate the website and use its features, such as accessing secure areas of the website.
          </div>
          <details data-section="ESSENTIAL" class="osano-cm-disclosure osano-cm-disclosure--collapse">
            <summary class="osano-cm-disclosure__toggle">Disclosure</summary>
            <ul data-type="cookies" class="osano-cm-disclosure__list"></ul>
            <ul data-type="scripts" class="osano-cm-disclosure__list"></ul>
          </details>
        </li>
        <li class="osano-cm-info-list__item">
            
    <label class="osano-cm-toggle" title="" for="6341310e-355a-42fe-9e98-6cde2da3829c">
        <input class="osano-cm-toggle__checkbox" data-category="MARKETING" id="6341310e-355a-42fe-9e98-6cde2da3829c" type="checkbox" wtx-context="1D509928-0C1F-47F7-A907-DB88D25A6CCF">
        <span class="osano-cm-toggle__switch"></span>
        <span class="osano-cm-toggle__label osano-cm-label">Marketing</span>
    </label>
    
          <div class="osano-cm-description osano-cm-info-list__item-description">
            Used to deliver advertising that is more relevant to you and your interests. They are also used to limit the number of times you see an advertisement as well as help measure the effectiveness of the advertising campaign. They are usually placed by advertising networks with the website operator’s permission.
          </div>
          <details data-section="MARKETING" class="osano-cm-disclosure osano-cm-disclosure--collapse">
            <summary class="osano-cm-disclosure__toggle">Disclosure</summary>
            <ul data-type="cookies" class="osano-cm-disclosure__list"></ul>
            <ul data-type="scripts" class="osano-cm-disclosure__list"></ul>
          </details>
        </li>
        <li class="osano-cm-info-list__item">
            
    <label class="osano-cm-toggle" title="" for="96f7a2d8-4638-4b92-bf97-01b6e8389a87">
        <input class="osano-cm-toggle__checkbox" data-category="PERSONALIZATION" id="96f7a2d8-4638-4b92-bf97-01b6e8389a87" type="checkbox" wtx-context="4EA8FC5F-094B-4386-9939-F6111C104757">
        <span class="osano-cm-toggle__switch"></span>
        <span class="osano-cm-toggle__label osano-cm-label">Personalization</span>
    </label>
    
          <div class="osano-cm-description osano-cm-info-list__item-description">
            Allows the website to remember choices you make (such as your user name, language or the region you are in) and provide enhanced, more personal features. For example, a website may be able to provide you with local weather reports or traffic news by storing data about the region in which you are currently located.
          </div>
          <details data-section="PERSONALIZATION" class="osano-cm-disclosure osano-cm-disclosure--collapse">
            <summary class="osano-cm-disclosure__toggle">Disclosure</summary>
            <ul data-type="cookies" class="osano-cm-disclosure__list"></ul>
            <ul data-type="scripts" class="osano-cm-disclosure__list"></ul>
          </details>
        </li>
        <li class="osano-cm-info-list__item">
          
    <label class="osano-cm-toggle" title="" for="cbf78119-9792-47c7-8771-4615b2a6dc43">
        <input class="osano-cm-toggle__checkbox" data-category="ANALYTICS" id="cbf78119-9792-47c7-8771-4615b2a6dc43" type="checkbox" wtx-context="3B9EFCFF-9432-4486-9C6E-4F78C2B4309D">
        <span class="osano-cm-toggle__switch"></span>
        <span class="osano-cm-toggle__label osano-cm-label">Analytics</span>
    </label>
    
          <div class="osano-cm-description osano-cm-info-list__item-description">

            Provides information about how a web site performs, how each page renders, and whether there are technical issues on the web site to the web site operator. This storage type generally doesn’t collect information that identifies a visitor.
          </div>
          <details data-section="ANALYTICS" class="osano-cm-disclosure osano-cm-disclosure--collapse">
            <summary class="osano-cm-disclosure__toggle">Disclosure</summary>
            <ul data-type="cookies" class="osano-cm-disclosure__list"></ul>
            <ul data-type="scripts" class="osano-cm-disclosure__list"></ul>
          </details>
        </li>
        
      </ul>
      <button aria-role="button" class="osano-cm-info__button osano-cm-button osano-cm-save">Save</button>
      <div class="osano-cm-powered-by">
        <a class="osano-cm-link osano-cm-powered-by__link" href="https://www.osano.com/?utm_campaign=cmp&amp;utm_source=cmp-dialog&amp;utm_medium=drawer">Powered By Osano</a>
      </div>
    </div>
  </div></div>
		<header class="header">
	<div class="navigation-bar">
		<div id="navigation-container">
			
				<a class="logo" href="https://ourcodingclub.github.io/">
  <img src="./app_files/logo_hex.svg" alt="Coding Club logo">
</a>

			
			<nav>
				<label for="hamburger">☰</label>
				<input type="checkbox" id="hamburger" wtx-context="2DE3DEEE-D37E-46D1-B98D-AF452B7865C7">
				<ul>
					
						
					<li class="item item-nav">
						<a href="https://ourcodingclub.github.io/">Home</a>
					</li>
					
						
					<li class="item item-nav">
						<a href="https://ourcodingclub.github.io/tutorials.html">Tutorials</a>
					</li>
					
						
					<li class="item item-nav">
						<a href="https://ourcodingclub.github.io/course.html">Course</a>
					</li>
					
						
					<li class="item item-nav">
						<a href="https://ourcodingclub.github.io/team.html">Team</a>
					</li>
					
						
					<li class="item item-nav">
						<a href="https://ourcodingclub.github.io/involve.html">Get involved</a>
					</li>
					
						
					<li class="item item-nav">
						<a href="https://ourcodingclub.github.io/links.html">Links</a>
					</li>
					
						
					<li class="item item-nav">
						<a href="https://ourcodingclub.github.io/contact.html">Contact</a>
					</li>
					
				</ul>
			</nav>
		</div>
	</div>
</header>

			
	<div class="banner" style="background-image: url(/assets/img/banner/slider-bg-pale.jpg)">
	
		<h1>Getting Started with Shiny</h1>
		
			<h3>Creating interactive web apps using the R language</h3>
		
	
</div>




<div class="content">
	<p class="author">
		
			Created by John
		
		
		
	</p>
	<hr>
	<h1 id="tutorial-aims">Tutorial aims:</h1>

<ol>
  <li><a href="https://ourcodingclub.github.io/tutorials/shiny/#download">Downloading Shiny</a></li>
  <li><a href="https://ourcodingclub.github.io/tutorials/shiny/#structure">Getting familiar with the Shiny app file structure</a></li>
  <li><a href="https://ourcodingclub.github.io/tutorials/shiny/#layout">Getting familiar with the Shiny app.R layout</a></li>
  <li><a href="https://ourcodingclub.github.io/tutorials/shiny/#syntax">Creating a Shiny app</a></li>
  <li><a href="https://ourcodingclub.github.io/tutorials/shiny/#export">Exporting a finished app</a></li>
  <li><a href="https://ourcodingclub.github.io/tutorials/shiny/#challenge">Challenge yourself to write an app</a></li>
</ol>

<p>At it’s core, Shiny is merely an R package like <code class="language-plaintext highlighter-rouge">dplyr</code> or <code class="language-plaintext highlighter-rouge">ggplot2</code>. The package is used to create web-applications, but uses the R language rather than javascript or HTML5, which are traditionally used for web applications. By using R, Shiny provides an efficient method of creating web applications designed around data presentation and analysis.</p>

<p>Below is an example of the basic Shiny app that we will be recreating in today’s tutorial:</p>

<p><img src="./app_files/barley_example_app.png" alt="Example app screenshot"></p>

<p>Have a look at <a href="http://shiny.rstudio.com/gallery/">these examples</a> if you want to see what a Shiny app looks like, or if you want inspiration for your own app.</p>

<h2 id="what-are-shiny-apps-useful-for">What are Shiny Apps useful for?</h2>

<ul>
  <li>Interactive data visualisation for presentations and websites</li>
  <li>Sharing results with collaborators</li>
  <li>Communicating science in an accessible way</li>
  <li>Bridging the gap between R users and non-R users</li>
</ul>

<h1 id="download">1. Downloading Shiny and tutorial resources</h1>

<p>To get Shiny in RStudio, the first thing you need is the <code class="language-plaintext highlighter-rouge">shiny</code> package, by running the code below in RStudio:</p>

<div class="language-r highlighter-rouge"><div class="highlight"><button class="copy-button" data-clipboard-target="#codeblock1">Copy contents</button><pre class="highlight" id="codeblock1"><code><span class="n">install.packages</span><span class="p">(</span><span class="s2">"shiny"</span><span class="p">)</span><span class="w">
</span><span class="n">install.packages</span><span class="p">(</span><span class="s2">"rsconnect"</span><span class="p">)</span><span class="w">  </span><span class="c1"># For publishing apps online</span><span class="w">
</span><span class="n">install.packages</span><span class="p">(</span><span class="s2">"agridat"</span><span class="p">)</span><span class="w">  </span><span class="c1"># For the dataset in today's tutorial</span><span class="w">
</span></code></pre></div></div>

<div class="callout ">

  <p>You can download the resources for this tutorial by heading to <a href="https://github.com/ourcodingclub/CC-11-Shiny">the Github repository for this tutorial</a>. You can click on <code class="language-plaintext highlighter-rouge">Clone / Download</code> and either download the zip file and extract the files, or fork the repository to your own Github account. <a href="https://ourcodingclub.github.io/tutorials/git/index.html">See our Git and Github tutorial for more info</a>.</p>

</div>

<h1 id="structure">2. The Shiny app file structure</h1>

<p>Next, select <em>File/ New File/ Shiny Web App…</em>, give the application a descriptive name (<strong>no spaces</strong>) and change the application type to “<em>Single File (app.R)</em>”, save the app in an appropriate directory and click <em>Create</em>.</p>

<p>RStudio generates a template R script called <code class="language-plaintext highlighter-rouge">app.R</code>. <strong>Delete all the code in the template so you have a blank script.</strong></p>

<p>Notice that the name you gave to your app was assigned to the directory, not the app script file. For your app to work, the file must remain named <code class="language-plaintext highlighter-rouge">app.R</code>!</p>

<p>It is possible to create a Shiny app with two files called <code class="language-plaintext highlighter-rouge">ui.R</code> and <code class="language-plaintext highlighter-rouge">server.R</code>, but the same can be accomplished by using one file. In the past, Shiny apps had to be created using two files, but the Shiny package has since been updated to allow the single file app structure, making things much tidier. You will see some tutorials on the internet using the old two file structure, but these can be easily translated to the one file structure. This tutorial will assume you have the one file app structure.</p>

<p>Now we can set up the rest of the folders for your app. Add a folder called <code class="language-plaintext highlighter-rouge">Data</code> and a folder called <code class="language-plaintext highlighter-rouge">www</code> in your app directory. <code class="language-plaintext highlighter-rouge">Data</code> will hold any data used by the app and <code class="language-plaintext highlighter-rouge">www</code> will hold any images and other web elements.</p>

<p>To review, a Shiny application should have this specific folder structure to work properly:</p>

<div class="language-plaintext highlighter-rouge"><div class="highlight"><button class="copy-button" data-clipboard-target="#codeblock2">Copy contents</button><pre class="highlight" id="codeblock2"><code>Test_App
├── app.R
├── Data
│&nbsp;&nbsp; └── data.csv
└── www
    └── A.jpg
</code></pre></div></div>

<h1 id="layout">3. app.R layout</h1>

<p>Now that the folder structure is set up, head back to RStudio to start building <code class="language-plaintext highlighter-rouge">app.R</code>. A basic <code class="language-plaintext highlighter-rouge">app.R</code> consists of these five parts:</p>

<ul>
  <li>A section at the top of the script loading any packages needed for the app to run. <code class="language-plaintext highlighter-rouge">shiny</code> is required at the very least, but others like <code class="language-plaintext highlighter-rouge">dplyr</code> or <code class="language-plaintext highlighter-rouge">ggplot2</code> could be added as they are needed:</li>
</ul>

<div class="language-r highlighter-rouge"><div class="highlight"><button class="copy-button" data-clipboard-target="#codeblock3">Copy contents</button><pre class="highlight" id="codeblock3"><code><span class="c1"># Packages ----</span><span class="w">
</span><span class="n">library</span><span class="p">(</span><span class="n">shiny</span><span class="p">)</span><span class="w">  </span><span class="c1"># Required to run any Shiny app</span><span class="w">
</span><span class="n">library</span><span class="p">(</span><span class="n">ggplot2</span><span class="p">)</span><span class="w">  </span><span class="c1"># For creating pretty plots</span><span class="w">
</span><span class="n">library</span><span class="p">(</span><span class="n">dplyr</span><span class="p">)</span><span class="w">  </span><span class="c1"># For filtering and manipulating data</span><span class="w">
</span><span class="n">library</span><span class="p">(</span><span class="n">agridat</span><span class="p">)</span><span class="w">  </span><span class="c1"># The package where the data comes from</span><span class="w">
</span></code></pre></div></div>

<ul>
  <li>A section loading any data needed by the app:</li>
</ul>

<div class="language-r highlighter-rouge"><div class="highlight"><button class="copy-button" data-clipboard-target="#codeblock4">Copy contents</button><pre class="highlight" id="codeblock4"><code><span class="c1"># Loading data ----</span><span class="w">
</span><span class="n">Barley</span><span class="w"> </span><span class="o">&lt;-</span><span class="w"> </span><span class="n">as.data.frame</span><span class="p">(</span><span class="n">beaven.barley</span><span class="p">)</span><span class="w">
</span></code></pre></div></div>

<ul>
  <li>An object called <code class="language-plaintext highlighter-rouge">ui</code>, which contains information about the layout of the app as it appears in your web browser. <code class="language-plaintext highlighter-rouge">fluidPage()</code> defines a layout that will resize according to the size of the browser window. All the app code will be placed within the brackets.</li>
</ul>

<div class="language-r highlighter-rouge"><div class="highlight"><button class="copy-button" data-clipboard-target="#codeblock5">Copy contents</button><pre class="highlight" id="codeblock5"><code><span class="c1"># ui.R ----</span><span class="w">
</span><span class="n">ui</span><span class="w"> </span><span class="o">&lt;-</span><span class="w"> </span><span class="n">fluidPage</span><span class="p">()</span><span class="w">
</span></code></pre></div></div>

<ul>
  <li>An object called <code class="language-plaintext highlighter-rouge">server</code>, which contains information about the computation of the app, creating plots, tables, maps etc. using information provided by the user. All the app code will be placed within the curly brackets.</li>
</ul>

<div class="language-r highlighter-rouge"><div class="highlight"><button class="copy-button" data-clipboard-target="#codeblock6">Copy contents</button><pre class="highlight" id="codeblock6"><code><span class="c1"># server.R ----</span><span class="w">
</span><span class="n">server</span><span class="w"> </span><span class="o">&lt;-</span><span class="w"> </span><span class="k">function</span><span class="p">(</span><span class="n">input</span><span class="p">,</span><span class="w"> </span><span class="n">output</span><span class="p">)</span><span class="w"> </span><span class="p">{}</span><span class="w">
</span></code></pre></div></div>

<ul>
  <li>A command to run the app. This should be included at the very end of <code class="language-plaintext highlighter-rouge">app.R</code>. It tells shiny that the user interface comes from the object called <code class="language-plaintext highlighter-rouge">ui</code> and that the server information (data, plots, tables, etc.) comes from the object called <code class="language-plaintext highlighter-rouge">server</code>.</li>
</ul>

<div class="language-r highlighter-rouge"><div class="highlight"><button class="copy-button" data-clipboard-target="#codeblock7">Copy contents</button><pre class="highlight" id="codeblock7"><code><span class="c1"># Run the app ----</span><span class="w">
</span><span class="n">shinyApp</span><span class="p">(</span><span class="n">ui</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">ui</span><span class="p">,</span><span class="w"> </span><span class="n">server</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">server</span><span class="p">)</span><span class="w">
</span></code></pre></div></div>

<p><strong>Delete any example code generated automatically when you created <code class="language-plaintext highlighter-rouge">app.R</code> and create a basic Shiny app by copying the snippets of code above into your <code class="language-plaintext highlighter-rouge">app.R</code>. Your script should now look like this:</strong></p>

<div class="language-r highlighter-rouge"><div class="highlight"><button class="copy-button" data-clipboard-target="#codeblock8">Copy contents</button><pre class="highlight" id="codeblock8"><code><span class="w"> </span><span class="c1"># Packages ----</span><span class="w">
 </span><span class="n">library</span><span class="p">(</span><span class="n">shiny</span><span class="p">)</span><span class="w">  </span><span class="c1"># Required to run any Shiny app</span><span class="w">
 </span><span class="n">library</span><span class="p">(</span><span class="n">ggplot2</span><span class="p">)</span><span class="w">  </span><span class="c1"># For creating pretty plots</span><span class="w">
 </span><span class="n">library</span><span class="p">(</span><span class="n">dplyr</span><span class="p">)</span><span class="w">  </span><span class="c1"># For filtering and manipulating data</span><span class="w">
 </span><span class="n">library</span><span class="p">(</span><span class="n">agridat</span><span class="p">)</span><span class="w">  </span><span class="c1"># The package where the data comes from</span><span class="w">

 </span><span class="c1"># Loading data ----</span><span class="w">
 </span><span class="n">Barley</span><span class="w"> </span><span class="o">&lt;-</span><span class="w"> </span><span class="n">as.data.frame</span><span class="p">(</span><span class="n">beaven.barley</span><span class="p">)</span><span class="w">

 </span><span class="c1"># ui.R ----</span><span class="w">
 </span><span class="n">ui</span><span class="w"> </span><span class="o">&lt;-</span><span class="w"> </span><span class="n">fluidPage</span><span class="p">()</span><span class="w">

 </span><span class="c1"># server.R ----</span><span class="w">
 </span><span class="n">server</span><span class="w"> </span><span class="o">&lt;-</span><span class="w"> </span><span class="k">function</span><span class="p">(</span><span class="n">input</span><span class="p">,</span><span class="w"> </span><span class="n">output</span><span class="p">)</span><span class="w"> </span><span class="p">{}</span><span class="w">

 </span><span class="c1"># Run the app ----</span><span class="w">
 </span><span class="n">shinyApp</span><span class="p">(</span><span class="n">ui</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">ui</span><span class="p">,</span><span class="w"> </span><span class="n">server</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">server</span><span class="p">)</span><span class="w">
</span></code></pre></div></div>

<h2 id="layout-of-a-shiny-app">Layout of a Shiny App</h2>

<p>Shiny apps are structured using panels, which are laid out in different arrangements. Panels can contain text, widgets, plots, tables, maps, images, etc.</p>

<p><a href="https://shiny.rstudio.com/articles/layout-guide.html">Here is a good set of examples on how the panel layout can be changed</a>. The most basic layout uses <code class="language-plaintext highlighter-rouge">fluidRow()</code> and <code class="language-plaintext highlighter-rouge">column()</code> to manually create grids of a given size. <code class="language-plaintext highlighter-rouge">fluidRow()</code> allows a lot of customisation, but is more fiddly. In this tutorial, we will be using <code class="language-plaintext highlighter-rouge">sidebarLayout()</code>, which creates a large panel and a smaller inset side panel.</p>

<h1 id="syntax">4. Creating a Shiny App - Basic Syntax</h1>

<p>To illustrate how to code a Shiny app, we will recreate a simple app that I wrote to explore some data on the productivity of Barley genotypes.</p>

<p>You can get the code for this app by opening <code class="language-plaintext highlighter-rouge">app.R</code> in the <code class="language-plaintext highlighter-rouge">Example_app</code> folder in the tutorial repository which you downloaded earlier.</p>

<p>Looking at the app and comparing to the panel layout examples in the above link, we can see that the app has a <code class="language-plaintext highlighter-rouge">sidebarLayout</code> with a <code class="language-plaintext highlighter-rouge">sidebarPanel</code>, <code class="language-plaintext highlighter-rouge">mainPanel</code> and <code class="language-plaintext highlighter-rouge">titlePanel</code>. It uses a <code class="language-plaintext highlighter-rouge">selectInput</code> to choose the genotype of barley shown in the histogram and the table, another <code class="language-plaintext highlighter-rouge">selectInput</code> for the colour of the histogram, a <code class="language-plaintext highlighter-rouge">sliderInput</code> to choose the number of bins in the histogram and a <code class="language-plaintext highlighter-rouge">textInput</code> to display some text in the app. The histogram is located in the <code class="language-plaintext highlighter-rouge">mainPanel</code> along with a summary table of the data being shown, while the inputs are in the <code class="language-plaintext highlighter-rouge">sidebarPanel</code>.</p>

<p><strong>Go back to your <code class="language-plaintext highlighter-rouge">app.R</code> and fill in the code you already have with the new bits of code below, which will serve as the basic skeleton for our app. Remember that you should only have one <code class="language-plaintext highlighter-rouge">ui</code> and one <code class="language-plaintext highlighter-rouge">server</code> object. Don’t just copy and paste the below:</strong></p>

<div class="language-r highlighter-rouge"><div class="highlight"><button class="copy-button" data-clipboard-target="#codeblock9">Copy contents</button><pre class="highlight" id="codeblock9"><code><span class="c1"># Packages ----</span><span class="w">
</span><span class="n">library</span><span class="p">(</span><span class="n">shiny</span><span class="p">)</span><span class="w">  </span><span class="c1"># Required to run any Shiny app</span><span class="w">
</span><span class="n">library</span><span class="p">(</span><span class="n">ggplot2</span><span class="p">)</span><span class="w">  </span><span class="c1"># For creating pretty plots</span><span class="w">
</span><span class="n">library</span><span class="p">(</span><span class="n">dplyr</span><span class="p">)</span><span class="w">  </span><span class="c1"># For filtering and manipulating data</span><span class="w">
</span><span class="n">library</span><span class="p">(</span><span class="n">agridat</span><span class="p">)</span><span class="w">  </span><span class="c1"># The package where the data comes from</span><span class="w">

</span><span class="c1"># Loading data ----</span><span class="w">
</span><span class="n">Barley</span><span class="w"> </span><span class="o">&lt;-</span><span class="w"> </span><span class="n">as.data.frame</span><span class="p">(</span><span class="n">beaven.barley</span><span class="p">)</span><span class="w">

</span><span class="c1"># ui.R ----</span><span class="w">
</span><span class="n">ui</span><span class="w"> </span><span class="o">&lt;-</span><span class="w"> </span><span class="n">fluidPage</span><span class="p">(</span><span class="w">
  </span><span class="n">titlePanel</span><span class="p">(</span><span class="s2">""</span><span class="p">),</span><span class="w">  </span><span class="c1"># Add a title panel</span><span class="w">
  </span><span class="n">sidebarLayout</span><span class="p">(</span><span class="w">  </span><span class="c1"># Make the layout a sidebarLayout</span><span class="w">
    </span><span class="n">sidebarPanel</span><span class="p">(),</span><span class="w">  </span><span class="c1"># Inside the sidebarLayout, add a sidebarPanel</span><span class="w">
    </span><span class="n">mainPanel</span><span class="p">()</span><span class="w">  </span><span class="c1"># Inside the sidebarLayout, add a mainPanel</span><span class="w">
  </span><span class="p">)</span><span class="w">
</span><span class="p">)</span><span class="w">

</span><span class="c1"># server.R ----</span><span class="w">
</span><span class="n">server</span><span class="w"> </span><span class="o">&lt;-</span><span class="w"> </span><span class="k">function</span><span class="p">(</span><span class="n">input</span><span class="p">,</span><span class="w"> </span><span class="n">output</span><span class="p">)</span><span class="w"> </span><span class="p">{}</span><span class="w">

</span><span class="c1"># Run the app ----</span><span class="w">
</span><span class="n">shinyApp</span><span class="p">(</span><span class="n">ui</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">ui</span><span class="p">,</span><span class="w"> </span><span class="n">server</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">server</span><span class="p">)</span><span class="w">
</span></code></pre></div></div>

<p><code class="language-plaintext highlighter-rouge">titlePanel()</code> indicates that we would like a separate panel at the top of the page in which we can put the title.</p>

<p><code class="language-plaintext highlighter-rouge">sidebarLayout()</code> indicates that we want our Shiny app to have the sidebar layout, one of many layouts we saw above. Within <code class="language-plaintext highlighter-rouge">sidebarLayout</code> we have:</p>

<p><code class="language-plaintext highlighter-rouge">sidebarPanel()</code> indicates that we want a sidebar panel included in our app. Sidebar panels often contain input widgets like sliders, text input boxes, radio buttons etc.</p>

<p><code class="language-plaintext highlighter-rouge">mainPanel()</code> indicates that we want a larger main panel. Main panels often contain the output of the app, whether it is a table, map, plot or something else.</p>

<h2 id="input-widgets">Input widgets</h2>

<p>Now that we have our basic structure we can start to fill it with inputs and outputs.</p>

<p>The example app has four input widgets, a <code class="language-plaintext highlighter-rouge">selectInput</code> for genotype, a <code class="language-plaintext highlighter-rouge">selectInput</code> for histogram colour, a <code class="language-plaintext highlighter-rouge">sliderInput</code> for number of bins and a <code class="language-plaintext highlighter-rouge">textInput</code> to add some  arbitrary text. Each of these widgets provides information on how to display the histogram and its accompanying table. In the example app, all the widgets are found in the <code class="language-plaintext highlighter-rouge">sidebarPanel</code> so the code for these widgets should be put in the <code class="language-plaintext highlighter-rouge">sidebarPanel</code> command like this:</p>

<div class="language-r highlighter-rouge"><div class="highlight"><button class="copy-button" data-clipboard-target="#codeblock10">Copy contents</button><pre class="highlight" id="codeblock10"><code><span class="n">ui</span><span class="w"> </span><span class="o">&lt;-</span><span class="w"> </span><span class="n">fluidPage</span><span class="p">(</span><span class="w">
  </span><span class="n">titlePanel</span><span class="p">(</span><span class="s2">"Barley Yield"</span><span class="p">),</span><span class="w">
  </span><span class="n">sidebarLayout</span><span class="p">(</span><span class="w">
    </span><span class="n">sidebarPanel</span><span class="p">(</span><span class="w">
      </span><span class="n">selectInput</span><span class="p">(</span><span class="n">inputId</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"gen"</span><span class="p">,</span><span class="w">  </span><span class="c1"># Give the input a name "genotype"</span><span class="w">
      </span><span class="n">label</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"1. Select genotype"</span><span class="p">,</span><span class="w">  </span><span class="c1"># Give the input a label to be displayed in the app</span><span class="w">
      </span><span class="n">choices</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="nf">c</span><span class="p">(</span><span class="s2">"A"</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"a"</span><span class="p">,</span><span class="s2">"B"</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"b"</span><span class="p">,</span><span class="s2">"C"</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"c"</span><span class="p">,</span><span class="s2">"D"</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"d"</span><span class="p">,</span><span class="s2">"E"</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"e"</span><span class="p">,</span><span class="s2">"F"</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"f"</span><span class="p">,</span><span class="s2">"G"</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"g"</span><span class="p">,</span><span class="s2">"H"</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"h"</span><span class="p">),</span><span class="w"> </span><span class="n">selected</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"a"</span><span class="p">),</span><span class="w">  </span><span class="c1"># Create the choices that can be selected. e.g. Display "A" and link to value "a"</span><span class="w">
    </span><span class="n">selectInput</span><span class="p">(</span><span class="n">inputId</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"colour"</span><span class="p">,</span><span class="w"> 
      </span><span class="n">label</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"2. Select histogram colour"</span><span class="p">,</span><span class="w"> 
      </span><span class="n">choices</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="nf">c</span><span class="p">(</span><span class="s2">"blue"</span><span class="p">,</span><span class="s2">"green"</span><span class="p">,</span><span class="s2">"red"</span><span class="p">,</span><span class="s2">"purple"</span><span class="p">,</span><span class="s2">"grey"</span><span class="p">),</span><span class="w"> </span><span class="n">selected</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"grey"</span><span class="p">),</span><span class="w">
    </span><span class="n">sliderInput</span><span class="p">(</span><span class="n">inputId</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"bin"</span><span class="p">,</span><span class="w"> 
      </span><span class="n">label</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"3. Select number of histogram bins"</span><span class="p">,</span><span class="w"> 
      </span><span class="n">min</span><span class="o">=</span><span class="m">1</span><span class="p">,</span><span class="w"> </span><span class="n">max</span><span class="o">=</span><span class="m">25</span><span class="p">,</span><span class="w"> </span><span class="n">value</span><span class="o">=</span><span class="w"> </span><span class="nf">c</span><span class="p">(</span><span class="m">10</span><span class="p">)),</span><span class="w">
    </span><span class="n">textInput</span><span class="p">(</span><span class="n">inputId</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"text"</span><span class="p">,</span><span class="w"> 
      </span><span class="n">label</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"4. Enter some text to be displayed"</span><span class="p">,</span><span class="w"> </span><span class="s2">""</span><span class="p">)</span><span class="w">
    </span><span class="p">),</span><span class="w">
  </span><span class="n">mainPanel</span><span class="p">()</span><span class="w">
  </span><span class="p">)</span><span class="w">
</span><span class="p">)</span><span class="w">
</span></code></pre></div></div>

<p>Note that <code class="language-plaintext highlighter-rouge">choices = c("A" = "a" ...</code> could be replaced with <code class="language-plaintext highlighter-rouge">choices = unique(Barley$gen)</code> to simply use the groups directly from the dataset.</p>

<p><strong>Spend a couple of minutes looking at this code so you understand what it means, then fill in your own <code class="language-plaintext highlighter-rouge">app.R</code> with the code.</strong></p>

<p>Let’s break down <code class="language-plaintext highlighter-rouge">selectInput()</code> to understand what is going on:</p>

<ul>
  <li><code class="language-plaintext highlighter-rouge">inputId = "genotype"</code> gives this input the name <code class="language-plaintext highlighter-rouge">genotype</code>, which will become useful when referencing this input later in the app script.</li>
  <li><code class="language-plaintext highlighter-rouge">label = "1\. Select genotype"</code> gives this input a label to be displayed above it in the app.</li>
  <li><code class="language-plaintext highlighter-rouge">choices = c("A" = "a","B" = "b", ...</code> gives a list of choices to be displayed in the dropdown menu (<code class="language-plaintext highlighter-rouge">A, B, etc.</code>) and the value that is actually gathered from that choice for use in the output (<code class="language-plaintext highlighter-rouge">a, b, etc.</code>).</li>
  <li><code class="language-plaintext highlighter-rouge">selected = "grey"</code> gives the value from the dropdown menu that is selected by default.</li>
</ul>

<p>You can look into the arguments presented by the other input widgets by using the help function <code class="language-plaintext highlighter-rouge">?</code>. For example, by running the code <code class="language-plaintext highlighter-rouge">?textInput</code> in the R console.</p>

<h2 id="more-input-widgets">More Input Widgets</h2>

<p>There are plenty of pre-made widgets in Shiny. Here is a selection, each with the minimum number of arguments needed when running the app, though many more can be added:</p>

<div class="language-r highlighter-rouge"><div class="highlight"><button class="copy-button" data-clipboard-target="#codeblock11">Copy contents</button><pre class="highlight" id="codeblock11"><code><span class="n">actionButton</span><span class="p">(</span><span class="n">inputId</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"action"</span><span class="p">,</span><span class="w"> </span><span class="n">label</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"Go!"</span><span class="p">)</span><span class="w">
</span></code></pre></div></div>

<div class="language-r highlighter-rouge"><div class="highlight"><button class="copy-button" data-clipboard-target="#codeblock12">Copy contents</button><pre class="highlight" id="codeblock12"><code><span class="n">radioButtons</span><span class="p">(</span><span class="n">inputId</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"radio"</span><span class="p">,</span><span class="w"> </span><span class="n">label</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"Radio Buttons"</span><span class="p">,</span><span class="w"> </span><span class="n">choices</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="nf">c</span><span class="p">(</span><span class="s2">"A"</span><span class="p">,</span><span class="w"> </span><span class="s2">"B"</span><span class="p">))</span><span class="w">
</span></code></pre></div></div>

<div class="language-r highlighter-rouge"><div class="highlight"><button class="copy-button" data-clipboard-target="#codeblock13">Copy contents</button><pre class="highlight" id="codeblock13"><code><span class="n">selectInput</span><span class="p">(</span><span class="n">inputId</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"select"</span><span class="p">,</span><span class="w"> </span><span class="n">label</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"select"</span><span class="p">,</span><span class="w"> </span><span class="n">choices</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="nf">c</span><span class="p">(</span><span class="s2">"A"</span><span class="p">,</span><span class="w"> </span><span class="s2">"B"</span><span class="p">))</span><span class="w">
</span></code></pre></div></div>

<div class="language-r highlighter-rouge"><div class="highlight"><button class="copy-button" data-clipboard-target="#codeblock14">Copy contents</button><pre class="highlight" id="codeblock14"><code><span class="n">sliderInput</span><span class="p">(</span><span class="n">inputId</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"slider"</span><span class="p">,</span><span class="w"> </span><span class="n">label</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"slider"</span><span class="p">,</span><span class="w"> </span><span class="n">value</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="m">5</span><span class="p">,</span><span class="w"> </span><span class="n">min</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="m">1</span><span class="p">,</span><span class="w"> </span><span class="n">max</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="m">100</span><span class="p">)</span><span class="w">
</span></code></pre></div></div>

<p>Notice how all of the inputs require an <code class="language-plaintext highlighter-rouge">inputId</code> and a <code class="language-plaintext highlighter-rouge">label</code> argument.</p>

<h2 id="running-a-shiny-app">Running a Shiny App</h2>

<p>Take this opportunity to preview your app by clicking <em>Run App</em>:</p>

<p><img src="./app_files/Run_App_Screenshot.jpg" alt="RStudio GUI run app screenshot"></p>

<p>or use the keyboard shortcut <code class="language-plaintext highlighter-rouge">Cmd + Opt + R</code> (Mac), <code class="language-plaintext highlighter-rouge">Ctrl + Alt + R</code> (Windows).</p>

<p>When a Shiny app is running from RStudio, the console cannot be used. To stop the app, click the <em>Stop</em> button in the top right of the console window or press the <code class="language-plaintext highlighter-rouge">Esc</code> key.</p>

<p><img src="./app_files/Stop_Screenshot.jpg" alt="RStudio GUI run app cancel screenshot"></p>

<h2 id="output">Output</h2>

<p>A Shiny app without any outputs is useless. Outputs can be in the form of plots, tables, maps or text.</p>

<p>As per our example app, we’re going to be using <code class="language-plaintext highlighter-rouge">ggplot()</code> to create a histogram. For more information on creating plots in <code class="language-plaintext highlighter-rouge">ggplot2</code>, see our tutorials on <a href="https://ourcodingclub.github.io/tutorials/datavis/index.html">basic data visualisation</a> and <a href="https://ourcodingclub.github.io/tutorials/data-vis-2/index.html">customising ggplot graphs</a>.</p>

<p>Outputs are created by placing code in the curly brackets (<code class="language-plaintext highlighter-rouge">{}</code>) in the <code class="language-plaintext highlighter-rouge">server</code> object:</p>

<div class="language-r highlighter-rouge"><div class="highlight"><button class="copy-button" data-clipboard-target="#codeblock15">Copy contents</button><pre class="highlight" id="codeblock15"><code><span class="n">server</span><span class="w"> </span><span class="o">&lt;-</span><span class="w"> </span><span class="k">function</span><span class="p">(</span><span class="n">input</span><span class="p">,</span><span class="w"> </span><span class="n">output</span><span class="p">)</span><span class="w"> </span><span class="p">{</span><span class="w">
  </span><span class="n">output</span><span class="o">$</span><span class="n">plot</span><span class="w"> </span><span class="o">&lt;-</span><span class="w"> </span><span class="n">renderPlot</span><span class="p">(</span><span class="n">ggplot</span><span class="p">(</span><span class="n">Barley</span><span class="p">,</span><span class="w"> </span><span class="n">aes</span><span class="p">(</span><span class="n">x</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">yield</span><span class="p">))</span><span class="w"> </span><span class="o">+</span><span class="w">  </span><span class="c1"># Create object called `output$plot` with a ggplot inside it</span><span class="w">
  </span><span class="n">geom_histogram</span><span class="p">(</span><span class="n">bins</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="m">7</span><span class="p">,</span><span class="w">  </span><span class="c1"># Add a histogram to the plot</span><span class="w">
    </span><span class="n">fill</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"grey"</span><span class="p">,</span><span class="w">  </span><span class="c1"># Make the fill colour grey</span><span class="w">
    </span><span class="n">data</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">Barley</span><span class="p">,</span><span class="w">  </span><span class="c1"># Use data from `Barley`</span><span class="w">
    </span><span class="n">colour</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"black"</span><span class="p">)</span><span class="w">  </span><span class="c1"># Outline the bins in black</span><span class="w">
  </span><span class="p">)</span><span class="w">                                                       
</span><span class="p">}</span><span class="w">
</span></code></pre></div></div>

<p><strong>Look at the code above for a couple of minutes to understand what is going on, then add it to your own <code class="language-plaintext highlighter-rouge">app.R</code> in the appropriate place.</strong></p>

<p>Basically, we are creating an object called <code class="language-plaintext highlighter-rouge">output$plot</code> and using <code class="language-plaintext highlighter-rouge">renderPlot()</code> to wrap a <code class="language-plaintext highlighter-rouge">ggplot()</code> command.</p>

<h2 id="reactive-output">Reactive output</h2>

<p>The histogram is great, but not particularly interactive. We need to link our input widgets to our output object.</p>

<p>We want to select individual genotypes to display in our histogram, which the user can select using the <code class="language-plaintext highlighter-rouge">selectInput</code> that we called <code class="language-plaintext highlighter-rouge">genotype</code> earlier. Use some base R wizardry, <code class="language-plaintext highlighter-rouge">[]</code> <code class="language-plaintext highlighter-rouge">$</code> and <code class="language-plaintext highlighter-rouge">==</code>, to select the data we want. <strong>Update <code class="language-plaintext highlighter-rouge">server</code> with the new reactive output arguments so it looks like the code below</strong>:</p>

<div class="language-r highlighter-rouge"><div class="highlight"><button class="copy-button" data-clipboard-target="#codeblock16">Copy contents</button><pre class="highlight" id="codeblock16"><code><span class="n">server</span><span class="w"> </span><span class="o">&lt;-</span><span class="w"> </span><span class="k">function</span><span class="p">(</span><span class="n">input</span><span class="p">,</span><span class="w"> </span><span class="n">output</span><span class="p">)</span><span class="w"> </span><span class="p">{</span><span class="w">
  </span><span class="n">output</span><span class="o">$</span><span class="n">plot</span><span class="w"> </span><span class="o">&lt;-</span><span class="w"> </span><span class="n">renderPlot</span><span class="p">(</span><span class="n">ggplot</span><span class="p">(</span><span class="n">Barley</span><span class="p">,</span><span class="w"> </span><span class="n">aes</span><span class="p">(</span><span class="n">x</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">yield</span><span class="p">))</span><span class="w"> </span><span class="o">+</span><span class="w">
  </span><span class="n">geom_histogram</span><span class="p">(</span><span class="n">bins</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="m">7</span><span class="p">,</span><span class="w">
      </span><span class="n">fill</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"grey"</span><span class="p">,</span><span class="w">
      </span><span class="n">data</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">Barley</span><span class="p">[</span><span class="n">Barley</span><span class="o">$</span><span class="n">gen</span><span class="w"> </span><span class="o">==</span><span class="w"> </span><span class="n">input</span><span class="o">$</span><span class="n">gen</span><span class="p">,],</span><span class="w">
      </span><span class="n">colour</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"black"</span><span class="p">)</span><span class="w">
  </span><span class="p">)</span><span class="w">                                                       
</span><span class="p">}</span><span class="w">
</span></code></pre></div></div>

<p><code class="language-plaintext highlighter-rouge">data = Barley[Barley$Genotype == input$gen,]</code> tells <code class="language-plaintext highlighter-rouge">geom_histogram()</code> to only use data where the value in column <code class="language-plaintext highlighter-rouge">gen</code> is equal to (<code class="language-plaintext highlighter-rouge">==</code>) the value given by <code class="language-plaintext highlighter-rouge">input$gen</code>. Note the <code class="language-plaintext highlighter-rouge">,</code> after <code class="language-plaintext highlighter-rouge">input$gen</code> which indicates that we are selecting columns and that all the rows should be selected.</p>

<p>Next, we want to be able to change the colour of the histogram based on the value of the <code class="language-plaintext highlighter-rouge">selectInput</code> called <code class="language-plaintext highlighter-rouge">colour</code>. To do this, simply change fill = “grey” to <code class="language-plaintext highlighter-rouge">fill = input$colour</code>.</p>

<p>Next, we want to select the number of bins in the histogram using the <code class="language-plaintext highlighter-rouge">sliderInput</code> called <code class="language-plaintext highlighter-rouge">bin</code>. Simply change <code class="language-plaintext highlighter-rouge">bins = 7</code> to <code class="language-plaintext highlighter-rouge">bins = input$bin</code>.</p>

<p>Finally, to create a table output showing some summary statistics of the selected genotype, create a new output object called <code class="language-plaintext highlighter-rouge">output$table</code> and use <code class="language-plaintext highlighter-rouge">renderTable()</code> to create a table generated using dplyr <code class="language-plaintext highlighter-rouge">summarise()</code>. See our <a href="https://ourcodingclub.github.io/tutorials/piping/index.html#dplyr">tutorial on data manipulation</a> for more information on dplyr. <strong>Update server with the <code class="language-plaintext highlighter-rouge">output$table</code> information so it looks like the code below</strong>:</p>

<div class="language-r highlighter-rouge"><div class="highlight"><button class="copy-button" data-clipboard-target="#codeblock17">Copy contents</button><pre class="highlight" id="codeblock17"><code><span class="n">server</span><span class="w"> </span><span class="o">&lt;-</span><span class="w"> </span><span class="k">function</span><span class="p">(</span><span class="n">input</span><span class="p">,</span><span class="w"> </span><span class="n">output</span><span class="p">)</span><span class="w"> </span><span class="p">{</span><span class="w">
</span><span class="n">output</span><span class="o">$</span><span class="n">myhist</span><span class="w"> </span><span class="o">&lt;-</span><span class="w"> </span><span class="n">renderPlot</span><span class="p">(</span><span class="n">ggplot</span><span class="p">(</span><span class="n">Barley</span><span class="p">,</span><span class="w"> </span><span class="n">aes</span><span class="p">(</span><span class="n">x</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">yield</span><span class="p">))</span><span class="w"> </span><span class="o">+</span><span class="w"> 
	</span><span class="n">geom_histogram</span><span class="p">(</span><span class="n">bins</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">input</span><span class="o">$</span><span class="n">bin</span><span class="p">,</span><span class="w"> </span><span class="n">fill</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">input</span><span class="o">$</span><span class="n">col</span><span class="p">,</span><span class="w"> </span><span class="n">group</span><span class="o">=</span><span class="n">input</span><span class="o">$</span><span class="n">gen</span><span class="p">,</span><span class="w"> 
		</span><span class="n">data</span><span class="o">=</span><span class="n">Barley</span><span class="p">[</span><span class="n">Barley</span><span class="o">$</span><span class="n">gen</span><span class="w"> </span><span class="o">==</span><span class="w"> </span><span class="n">input</span><span class="o">$</span><span class="n">gen</span><span class="p">,],</span><span class="w">
  		</span><span class="n">colour</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"black"</span><span class="p">))</span><span class="w">

</span><span class="n">output</span><span class="o">$</span><span class="n">mytext</span><span class="w"> </span><span class="o">&lt;-</span><span class="w"> </span><span class="n">renderText</span><span class="p">(</span><span class="n">input</span><span class="o">$</span><span class="n">text</span><span class="p">)</span><span class="w">

</span><span class="n">output</span><span class="o">$</span><span class="n">mytable</span><span class="w"> </span><span class="o">&lt;-</span><span class="w"> </span><span class="n">renderTable</span><span class="p">(</span><span class="n">Barley</span><span class="w"> </span><span class="o">%&gt;%</span><span class="w">
</span><span class="n">filter</span><span class="p">(</span><span class="n">gen</span><span class="w"> </span><span class="o">==</span><span class="w"> </span><span class="n">input</span><span class="o">$</span><span class="n">gen</span><span class="p">)</span><span class="w"> </span><span class="o">%&gt;%</span><span class="w">
</span><span class="n">summarise</span><span class="p">(</span><span class="s2">"Mean"</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">mean</span><span class="p">(</span><span class="n">yield</span><span class="p">),</span><span class="w"> 
  	</span><span class="s2">"Median"</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">median</span><span class="p">(</span><span class="n">yield</span><span class="p">),</span><span class="w">
  	</span><span class="s2">"STDEV"</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="n">sd</span><span class="p">(</span><span class="n">yield</span><span class="p">),</span><span class="w"> 
  	</span><span class="s2">"Min"</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="nf">min</span><span class="p">(</span><span class="n">yield</span><span class="p">),</span><span class="w">
  	</span><span class="s2">"Max"</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="nf">max</span><span class="p">(</span><span class="n">yield</span><span class="p">)))</span><span class="w">
</span><span class="p">}</span><span class="w">
</span></code></pre></div></div>

<h2 id="displaying-output">Displaying output</h2>

<p>To make the outputs appear on your app in the <code class="language-plaintext highlighter-rouge">mainPanel</code>, <strong>they need to be added to the <code class="language-plaintext highlighter-rouge">ui</code> object inside <code class="language-plaintext highlighter-rouge">mainPanel()</code> like so</strong>:</p>

<div class="language-r highlighter-rouge"><div class="highlight"><button class="copy-button" data-clipboard-target="#codeblock18">Copy contents</button><pre class="highlight" id="codeblock18"><code><span class="n">ui</span><span class="w"> </span><span class="o">&lt;-</span><span class="w"> 
  </span><span class="n">fluidPage</span><span class="p">(</span><span class="w">
    </span><span class="n">titlePanel</span><span class="p">(</span><span class="s2">"Barley Yield"</span><span class="p">),</span><span class="w">
    </span><span class="n">sidebarLayout</span><span class="p">(</span><span class="w">
      </span><span class="n">position</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"right"</span><span class="p">,</span><span class="w">
      </span><span class="n">sidebarPanel</span><span class="p">(</span><span class="n">h3</span><span class="p">(</span><span class="s2">"Inputs for histogram"</span><span class="p">),</span><span class="w"> 
                   </span><span class="n">selectInput</span><span class="p">(</span><span class="s2">"gen"</span><span class="p">,</span><span class="w"> </span><span class="s2">"1. Select genotype"</span><span class="p">,</span><span class="w"> </span><span class="n">choices</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="nf">c</span><span class="p">(</span><span class="s2">"A"</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"a"</span><span class="p">,</span><span class="s2">"B"</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"b"</span><span class="p">,</span><span class="s2">"C"</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"c"</span><span class="p">,</span><span class="s2">"D"</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"d"</span><span class="p">,</span><span class="s2">"E"</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"e"</span><span class="p">,</span><span class="s2">"F"</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"f"</span><span class="p">,</span><span class="s2">"G"</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"g"</span><span class="p">,</span><span class="s2">"H"</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"h"</span><span class="p">),</span><span class="w"> </span><span class="n">selected</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"a"</span><span class="p">),</span><span class="w">
                   </span><span class="n">br</span><span class="p">(),</span><span class="w">
                   </span><span class="n">selectInput</span><span class="p">(</span><span class="s2">"col"</span><span class="p">,</span><span class="w"> </span><span class="s2">"2. Select histogram colour"</span><span class="p">,</span><span class="w"> </span><span class="n">choices</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="nf">c</span><span class="p">(</span><span class="s2">"blue"</span><span class="p">,</span><span class="s2">"green"</span><span class="p">,</span><span class="s2">"red"</span><span class="p">,</span><span class="s2">"purple"</span><span class="p">,</span><span class="s2">"grey"</span><span class="p">),</span><span class="w"> </span><span class="n">selected</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"grey"</span><span class="p">),</span><span class="w">
                   </span><span class="n">br</span><span class="p">(),</span><span class="w">
                   </span><span class="n">sliderInput</span><span class="p">(</span><span class="s2">"bin"</span><span class="p">,</span><span class="w"> </span><span class="s2">"3. Select number of histogram bins"</span><span class="p">,</span><span class="w"> </span><span class="n">min</span><span class="o">=</span><span class="m">1</span><span class="p">,</span><span class="w"> </span><span class="n">max</span><span class="o">=</span><span class="m">25</span><span class="p">,</span><span class="w"> </span><span class="n">value</span><span class="o">=</span><span class="w"> </span><span class="nf">c</span><span class="p">(</span><span class="m">10</span><span class="p">)),</span><span class="w">
                   </span><span class="n">br</span><span class="p">(),</span><span class="w">
                   </span><span class="n">textInput</span><span class="p">(</span><span class="s2">"text"</span><span class="p">,</span><span class="w"> </span><span class="s2">"4. Enter some text to be displayed"</span><span class="p">,</span><span class="w"> </span><span class="s2">""</span><span class="p">)),</span><span class="w">
                   </span><span class="n">mainPanel</span><span class="p">(</span><span class="w">
                             </span><span class="n">plotOutput</span><span class="p">(</span><span class="s2">"myhist"</span><span class="p">),</span><span class="w">
                             </span><span class="n">tableOutput</span><span class="p">(</span><span class="s2">"mytable"</span><span class="p">),</span><span class="w">
                             </span><span class="n">textOutput</span><span class="p">(</span><span class="s2">"mytext"</span><span class="p">)</span><span class="w">
                             </span><span class="p">)</span><span class="w">
      </span><span class="p">)</span><span class="w">
    </span><span class="p">)</span><span class="w">
</span></code></pre></div></div>

<p><strong>Take this chance to preview your app again by clicking <code class="language-plaintext highlighter-rouge">Run</code> in RStudio.</strong></p>

<h2 id="additional-elements">Additional elements</h2>

<h3 id="html">HTML</h3>

<p>To make your app look more pretty, you can add HTML tags like in a normal HTML webpage. Below is a table of basic HTML tags, their Shiny equivalent and a description of what they do:</p>

<table>
  <thead>
    <tr>
      <th>HTML</th>
      <th style="text-align: center">Shiny</th>
      <th>Function</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><code class="language-plaintext highlighter-rouge">&lt;div&gt;</code></td>
      <td style="text-align: center"><code class="language-plaintext highlighter-rouge">tags$div()</code></td>
      <td>Defines a block with consistent formatting</td>
    </tr>
    <tr>
      <td><code class="language-plaintext highlighter-rouge">&lt;br&gt;</code></td>
      <td style="text-align: center"><code class="language-plaintext highlighter-rouge">tags$br()</code></td>
      <td>Inserts a break</td>
    </tr>
    <tr>
      <td><code class="language-plaintext highlighter-rouge">&lt;hr&gt;</code></td>
      <td style="text-align: center"><code class="language-plaintext highlighter-rouge">tags$hr()</code></td>
      <td>Inserts a horizontal line</td>
    </tr>
    <tr>
      <td><code class="language-plaintext highlighter-rouge">&lt;p&gt;</code></td>
      <td style="text-align: center"><code class="language-plaintext highlighter-rouge">tags$p()</code></td>
      <td>Creates a paragraph of text</td>
    </tr>
    <tr>
      <td><code class="language-plaintext highlighter-rouge">&lt;a&gt;</code></td>
      <td style="text-align: center"><code class="language-plaintext highlighter-rouge">tags$a(href = "LINK", "displayed text")</code></td>
      <td>Creates a clickable link</td>
    </tr>
  </tbody>
</table>

<p>A list of all HTML tags can be found using:</p>

<div class="language-r highlighter-rouge"><div class="highlight"><button class="copy-button" data-clipboard-target="#codeblock19">Copy contents</button><pre class="highlight" id="codeblock19"><code><span class="n">shiny</span><span class="o">::</span><span class="n">tags</span><span class="w">
</span></code></pre></div></div>

<p>Some tags may conflict with other functions and so you should always state the source the function comes from by using <code class="language-plaintext highlighter-rouge">tags$</code>, e.g.:</p>

<div class="language-r highlighter-rouge"><div class="highlight"><button class="copy-button" data-clipboard-target="#codeblock20">Copy contents</button><pre class="highlight" id="codeblock20"><code><span class="n">tags</span><span class="o">$</span><span class="n">div</span><span class="p">()</span><span class="w">
</span></code></pre></div></div>

<p>Tags can be stacked to apply many arguments to the same object/text, just as in HTML:</p>

<div class="language-r highlighter-rouge"><div class="highlight"><button class="copy-button" data-clipboard-target="#codeblock21">Copy contents</button><pre class="highlight" id="codeblock21"><code><span class="n">tags</span><span class="o">$</span><span class="n">div</span><span class="p">(</span><span class="n">style</span><span class="o">=</span><span class="s2">"color:red"</span><span class="p">,</span><span class="w">
  </span><span class="n">tags</span><span class="o">$</span><span class="n">p</span><span class="p">(</span><span class="s2">"Visit us at:"</span><span class="p">),</span><span class="w">
  </span><span class="n">tags</span><span class="o">$</span><span class="n">a</span><span class="p">(</span><span class="n">href</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"https://ourcodingclub.github.io"</span><span class="p">,</span><span class="w"> </span><span class="s2">"Coding Club"</span><span class="p">)</span><span class="w">
  </span><span class="p">)</span><span class="w">
</span></code></pre></div></div>

<p>This creates a block of text that is coloured red (<code class="language-plaintext highlighter-rouge">style="color:red"</code>), within that block there is a paragraph of text (<code class="language-plaintext highlighter-rouge">tags$p("Visit us at?:")</code>) and a link (<code class="language-plaintext highlighter-rouge">tags$a(href = "http://ourcodingglub.github.io", "Coding Club")</code>).</p>

<p><strong>Add the code above to your Shiny app in <code class="language-plaintext highlighter-rouge">mainPanel()</code> and see what happens!</strong></p>

<p>For more information on the arguments that can be included in popular Shiny HTML tags, RStudio have a nice wiki at [[https://shiny.rstudio.com/articles/tag-glossary.html]].</p>

<h1 id="export">5. Exporting a finished app</h1>

<h2 id="as-a-github-repository">As a Github repository</h2>

<p>It is easy to send a Shiny app to somebody else who also has RStudio. The easiest way is to send <code class="language-plaintext highlighter-rouge">app.R</code> alongside any data and other resources in a zip file to be unzipped by the recipient and run through R.</p>

<p>If you want to quickly share the app over the internet we recommend using <a href="http://www.github.com/">Github</a> to host the file.</p>

<p>Go to <a href="http://www.github.com/">Github</a>, sign in with your account details, create a repository and upload everything from your app folder, including any <code class="language-plaintext highlighter-rouge">Data</code> and <code class="language-plaintext highlighter-rouge">www</code> folders.</p>

<p>Remember to add a file called <code class="language-plaintext highlighter-rouge">README.md</code> using <code class="language-plaintext highlighter-rouge">Create new file</code> in your new app repository, where you can write a quick explanation of the content of your app. <code class="language-plaintext highlighter-rouge">.md</code> files can use markdown syntax to create headers, sections, links etc.. See our <a href="https://ourcodingclub.github.io/tutorials/rmarkdown/index.html">tutorial on markdown and reproducible research</a> for more markdown tips:</p>

<p><img src="./app_files/github_create_new_file.jpg" alt="Github Create new file screenshot"></p>

<p>To send the app to another person, give them your Github username and the name of the app repo and ask them to run <code class="language-plaintext highlighter-rouge">runGithub()</code> in R, like this:</p>

<div class="language-r highlighter-rouge"><div class="highlight"><button class="copy-button" data-clipboard-target="#codeblock22">Copy contents</button><pre class="highlight" id="codeblock22"><code><span class="n">runGitHub</span><span class="p">(</span><span class="n">repo</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"repo_name"</span><span class="p">,</span><span class="w"> </span><span class="n">username</span><span class="w"> </span><span class="o">=</span><span class="w"> </span><span class="s2">"user_name"</span><span class="p">)</span><span class="w">
</span></code></pre></div></div>

<p>Alternatively, if your recipient doesn’t know how Github works, upload your app folder as a <code class="language-plaintext highlighter-rouge">.zip</code> file to Github or any other file-hosting service and they can use <code class="language-plaintext highlighter-rouge">runUrl()</code> if you give them the url of the zipfile:</p>

<div class="language-r highlighter-rouge"><div class="highlight"><button class="copy-button" data-clipboard-target="#codeblock23">Copy contents</button><pre class="highlight" id="codeblock23"><code><span class="n">runUrl</span><span class="p">(</span><span class="s2">"https://github.com/rstudio/shiny_example/archive/master.zip"</span><span class="p">)</span><span class="w">
</span></code></pre></div></div>

<p>To learn more about Github, check out our <a href="https://ourcodingclub.github.io/tutorials/git/index.html">tutorial on Git and Github</a>.</p>

<h2 id="as-a-shinyappsio-app">As a shinyapps.io app</h2>

<p>You can also host Shiny apps on <a href="https://www.shinyapps.io/">www.shinyapps.io</a>, a webhosting platform run by RStudio that is especially built for Shiny apps. Go to their website and sign up using whatever method you choose, then go to <a href="https://www.shinyapps.io/admin/#/tokens">www.shinyapps.io/admin/#/tokens</a>, click <em>Show secret</em> and copy the <code class="language-plaintext highlighter-rouge">rsconnect</code> account info:</p>

<p><img src="./app_files/shinyapps_io_token.jpg" alt="shinyapps.io token screenshot"></p>

<p>Then open up an R session and run the copied material to link <code class="language-plaintext highlighter-rouge">shinyapps.io</code> with R Studio.</p>

<p>To upload your app, open your <code class="language-plaintext highlighter-rouge">app.R</code> and click the publish button. Select a name for your app (<strong>no spaces</strong>) and click <em>Publish</em>.</p>

<p><img src="./app_files/rstudio_shiny_publish.jpg" alt="RStudio RS Connect screenshot"></p>

<p>The app can then be used by anyone with the URL for that app, which can be found by going to <code class="language-plaintext highlighter-rouge">shinyapps.io</code> and opening the app info from the dashboard:</p>

<p><img src="./app_files/shinyapps_io_dash.jpg" alt="shinyapps.io URL screenshot"></p>

<p>To embed an app that is hosted by <code class="language-plaintext highlighter-rouge">shinyapps.io</code>, in your own website you can put it in an <code class="language-plaintext highlighter-rouge">iframe</code>, replacing the URL with your own app URL and altering the style arguments to your own desire:</p>

<div class="language-html highlighter-rouge"><div class="highlight"><button class="copy-button" data-clipboard-target="#codeblock24">Copy contents</button><pre class="highlight" id="codeblock24"><code><span class="nt">&lt;iframe</span> <span class="na">src=</span><span class="s">"https://johngodlee.shinyapps.io/barley_yield_exploration/"</span> <span class="na">style=</span><span class="s">"border:none;width:1000px;height:500px;"</span><span class="nt">&gt;&lt;/iframe&gt;</span>
</code></pre></div></div>

<h1 id="challenge">6. Challenge yourself to create a Shiny app</h1>

<p>Now that you have the skills to create a Shiny app, try to create an app of your own and publish it to your <code class="language-plaintext highlighter-rouge">shinyapps.io</code> profile. Your app could use your own data if you have some, or one of the many datasets that come bundled with R. If you need more inspiration, have a look through the <a href="http://shiny.rstudio.com/gallery/">Shiny app gallery</a>.</p>

<p><br></p>

<section id="portfolio-work" style="background-color: #98dee2; padding-bottom:20px">
<div class="content-new-streams">
<a href="https://ourcodingclub.github.io/course/stats-scratch/index.html" target="_blank"><img src="./app_files/DL_stream1.png" style="width:30%; height:auto; padding:20px;20px;20px;80px;" alt="Stats from Scratch stream"></a>
<h4>Doing this tutorial as part of our Data Science for Ecologists and Environmental Scientists online course?</h4>
<p><big>This tutorial is part of the <b><a href="https://ourcodingclub.github.io/course/stats-scratch/index.html" target="_blank">Stats from Scratch stream</a></b> from our online course. Go to the stream page to find out about the other tutorials part of this stream!</big></p>
<p>If you have already signed up for our course and you are ready to take the quiz, go to our quiz centre.<b> Note that you need to <a href="https://ourcodingclub.github.io/course_info" target="_blank">sign up first</a> before you can take the quiz.</b> If you haven't heard about the course before and want to learn more about it, check out the <a href="https://ourcodingclub.github.io/course" target="_blank">course page.</a></p>


<form class="form-group" action="https://coding-club.shinyapps.io/test-centre/" method="get" wtx-context="5CE13CC7-503F-4B31-A5DB-FCF0FFEFD0AE">
	<button type="submit" style="">Launch Quiz Centre</button>
</form>


</div>
</section>

	<div class="survey">
		<h5>Stay up to date and learn about our newest resources by following us on <a href="https://twitter.com/our_codingclub" target="_blank">Twitter</a>!</h5>	
	
		<h5><a href="https://ourcodingclub.github.io/tutorials/shiny/" target="_blank">We would love to hear your feedback, please fill out our survey!</a></h5>
	
	<h5>Contact us with any questions on <a href="mailto:ourcodingclub@gmail.com?Subject=Tutorial%20question" target="_top">ourcodingclub@gmail.com</a></h5>	
    
    
	
	<h3>Related tutorials:</h3>
	
	
		
    		<ul>
  				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
						<li><a href="https://ourcodingclub.github.io/tutorials/datavis/">Beautiful and informative data visualisation</a></li>
  					
				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
						<li><a href="https://ourcodingclub.github.io/tutorials/data-vis-2/">Data visualisation 2</a></li>
  					
				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
						<li><a href="https://ourcodingclub.github.io/tutorials/qualitative/">Analysing ordinal data, surveys, count data</a></li>
  					
				
			</ul>
		
	
		
    		<ul>
  				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
				
    				
				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
						<li><a href="https://ourcodingclub.github.io/tutorials/dataviz-beautification/">Efficient and beautiful data visualisation</a></li>
  					
				
    				
				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
						<li><a href="https://ourcodingclub.github.io/tutorials/dataviz-beautification-synthesis/">Efficient and beautiful data synthesis</a></li>
  					
				
    				
				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
						<li><a href="https://ourcodingclub.github.io/tutorials/trends-analysis-dataviz/">Analysing and visualising&nbsp;population trends and spatial mapping</a></li>
  					
				
    				
				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
				
    				
				
			</ul>
		
	
		
    		<ul>
  				
    				
				
    				
				
    				
				
			</ul>
		
	
</div>

</div>

    	<footer class="footer">
	<hr>
	<div class="footer-container">
    	<ul class="footer-link-list">
        	<li><a href="https://ourcodingclub.github.io/tutorials">Tutorials</a></li>
        	<li><a href="https://ourcodingclub.github.io/team">About Us</a></li>
        	<li><a href="https://ourcodingclub.github.io/contact">Contact us</a></li>
	    	<li><a href="https://twitter.com/our_codingclub">Follow us on Twitter</a></li>
    	</ul>
    	<div class="footer-text">
			<p>We are happy for people to use and further develop our tutorials - please give credit to Coding Club by linking to <a href="https://ourcodingclub.github.io/">our website</a>. We are also happy to discuss possible collaborations, so get in touch at <b>ourcodingclub(at)gmail.com</b></p>
    		<p>See our <a href="https://ourcodingclub.github.io/terms">Terms of Use</a> and our <a href="https://ourcodingclub.github.io/privacy">Data Privacy policy</a>.</p>
		<p>Disclaimer: All Coding Club tutorials are created for teaching purposes. We do our best to maintain the content and to provide updates, but sometimes package updates break the code and not all code works on all operating systems. Please note that how you use our tutorials is ultimately up to you. We do not carry responsibility for whether the tutorial code will work at the time you use the tutorial. We do not carry responsibility for whether the approaches used in the tutorials are appropriate for your own analyses. We encourage users to engage and updating tutorials by using <a href="https://github.com/ourcodingclub/ourcodingclub.github.io" target="_blank">pull requests in GitHub</a>.</p>	
		<p>This work is licensed under a <a href="https://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a></p>
			<a href="https://creativecommons.org/licenses/by-sa/4.0/"><img class="license" src="./app_files/80x15.png" alt="CC-by-sa-4.0"></a>
    	</div>
    </div>
</footer>

<!-- JS -->
<script src="./app_files/owl.carousel.js.download"></script>
<script src="./app_files/owl.carousel-init.js.download"></script>
<script src="./app_files/clipboard.min.js.download"></script>
<script src="./app_files/codeselect.js.download"></script>
<script src="./app_files/hide-back.js.download"></script>


	
    	<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[1];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-92956541-1', 'auto');
  ga('send', 'pageview');
</script>

    
	

<iframe title="__uspapiLocator" name="__uspapiLocator" style="display: none;" src="./app_files/saved_resource.html"></iframe><iframe title="__tcfapiLocator" name="__tcfapiLocator" style="display: none;" src="./app_files/saved_resource(1).html"></iframe><script>mendeleyWebImporter = {
  downloadPdfs(t,e) { return this._call('downloadPdfs', [t,e]); },
  open() { return this._call('open', []); },
  setLoginToken(t) { return this._call('setLoginToken', [t]); },
  _call(methodName, methodArgs) {
    const id = Math.random();
    window.postMessage({ id, token: '0.9033973102594126', methodName, methodArgs }, 'https://ourcodingclub.github.io');
    return new Promise(resolve => {
      const listener = window.addEventListener('message', event => {
        const data = event.data;
        if (typeof data !== 'object' || !('result' in data) || data.id !== id) return;
        window.removeEventListener('message', listener);
        resolve(data.result);
      });
    });
  }
};</script></body></html>