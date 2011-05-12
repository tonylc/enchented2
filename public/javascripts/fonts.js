/*
 * MyFonts Webfont Build ID 804514, 2011-05-11T23:39:13-0400
 * 
 * The fonts listed in this notice are subject to the End User License
 * Agreement(s) entered into by the website owner. All other parties are 
 * explicitly restricted from using the Licensed Webfonts(s).
 * 
 * You may obtain a valid license at the URLs below.
 * 
 * Webfont: Bodoni Egyptian Pro Bold
 * URL: http://new.myfonts.com/fonts/shinn/bodoni-egyptian-pro/bold/
 * Foundry: ShinnType
 * Copyright: Copyright (c) 2010 by Nick Shinn. Published by Shinn Type Foundry. All rights reserved.
 * License: http://www.myfonts.com/viewlicense?1056
 * Licensed pageviews: 10,000/month
 * CSS font-family: BodoniEgyptianPro-Bold
 * CSS font-weight: normal
 * 
 * Webfont: Bodoni Egyptian Pro Regular
 * URL: http://new.myfonts.com/fonts/shinn/bodoni-egyptian-pro/regular/
 * Foundry: ShinnType
 * Copyright: Copyright (c) 2010 by Nick Shinn. Published by Shinn Type Foundry. All rights reserved.
 * License: http://www.myfonts.com/viewlicense?1056
 * Licensed pageviews: 10,000/month
 * CSS font-family: BodoniEgyptianPro-Regular
 * CSS font-weight: normal
 * 
 * (c) 2011 Bitstream Inc
*/

// safari 3.1: data-css
// firefox 3.6+: woff
// firefox 3.5+: data-css
// chrome 4+: data-css
// chrome 6+: woff
// IE 5+: eot
// IE 9: woff
// opera 10.1+: data-css
// mobile safari: svg/data-css
// android: data-css

var customPath = '/fonts';
var browserName, browserVersion, webfontType,  webfontTypeOverride;
 
if (typeof(customPath) == 'undefined')
	var customPath = false;


if (typeof(woffEnabled) == 'undefined')
	var woffEnabled = true;


if (/myfonts_test=on/.test(window.location.search))
	var myfonts_webfont_test = true;

else if (typeof(myfonts_webfont_test) == 'undefined')
	var myfonts_webfont_test = false;


if (customPath)
	var path = customPath;

else {
	var scripts = document.getElementsByTagName("SCRIPT");
	var script = scripts[scripts.length-1].src;

	if (!script.match("://") && script.charAt(0) != '/')
		script = "./"+script;
		
	var path = script.replace(/\\/g,'/').replace(/\/[^\/]*\/?$/, '');
}


if (myfonts_webfont_test)
	document.write('<script type="text/javascript" src="' +path+ '/Caroline & Tony_test.js"></script>');


if (/webfont=(woff|ttf|eot)/.test(window.location.search))
{
	webfontTypeOverride = RegExp.$1;

	if (webfontTypeOverride == 'ttf')
		webfontTypeOverride = 'data-css';
}


if (/MSIE (\d+\.\d+)/.test(navigator.userAgent))
{
	browserName = 'MSIE';
	browserVersion = new Number(RegExp.$1);
	if (browserVersion >= 9.0 && woffEnabled)
		webfontType = 'woff';
	else if (browserVersion >= 5.0)
		webfontType = 'eot';
}
else if (/Firefox[\/\s](\d+\.\d+)/.test(navigator.userAgent))
{
	browserName = 'Firefox';
	browserVersion = new Number(RegExp.$1);
	if (browserVersion >= 3.6 && woffEnabled)
		webfontType = 'woff';
	else if (browserVersion >= 3.5)
		webfontType = 'data-css';
}
else if (/Chrome\/(\d+\.\d+)/.test(navigator.userAgent)) // must check before safari
{
	browserName = 'Chrome';
	browserVersion = new Number(RegExp.$1);

	if (browserVersion >= 6.0 && woffEnabled)
		webfontType = 'woff';

	else if (browserVersion >= 4.0)
		webfontType = 'data-css';
}
else if (/Mozilla.*(iPhone|iPad).* OS (\d+)_(\d+).* AppleWebKit.*Safari/.test(navigator.userAgent))
{
		browserName = 'MobileSafari';
		browserVersion = new Number(RegExp.$2) + (new Number(RegExp.$3) / 10)

	if(browserVersion >= 4.2)
		webfontType = 'data-css';

	else
		webfontType = 'svg';
}
else if (/Mozilla.*(iPhone|iPad|BlackBerry).*AppleWebKit.*Safari/.test(navigator.userAgent))
{
	browserName = 'MobileSafari';
	webfontType = 'svg';
}
else if (/Safari\/(\d+\.\d+)/.test(navigator.userAgent))
{
	browserName = 'Safari';
	if (/Version\/(\d+\.\d+)/.test(navigator.userAgent))
	{
		browserVersion = new Number(RegExp.$1);
		if (browserVersion >= 3.1)
			webfontType = 'data-css';
	}
}
else if (/Opera\/(\d+\.\d+)/.test(navigator.userAgent))
{
	browserName = 'Opera';
	if (/Version\/(\d+\.\d+)/.test(navigator.userAgent))
	{
		browserVersion = new Number(RegExp.$1);
		
		if (browserVersion >= 11.1 && woffEnabled)
			webfontType = 'woff';
		else if (browserVersion >= 10.1)
			webfontType = 'data-css';
	}
}


if (webfontTypeOverride)
	webfontType = webfontTypeOverride;

switch (webfontType)
{
		case 'eot':
		document.write("<style>\n");
				document.write("@font-face {font-family:\"BodoniEgyptianPro-Bold\";src:url(\"" + path + "/webfonts/eot/style_196039.eot\");}\n");
				document.write("@font-face {font-family:\"BodoniEgyptianPro-Regular\";src:url(\"" + path + "/webfonts/eot/style_196043.eot\");}\n");
				document.write("</style>");
		break;
		
		case 'woff':
		document.write("<style>\n");
				document.write("@font-face {font-family:\"BodoniEgyptianPro-Bold\";src:url(\"" + path + "/webfonts/woff/style_196039.woff\") format(\"woff\");}\n");
				document.write("@font-face {font-family:\"BodoniEgyptianPro-Regular\";src:url(\"" + path + "/webfonts/woff/style_196043.woff\") format(\"woff\");}\n");
				document.write("</style>");
		break;
	
		case 'data-css':
		document.write("<style>\n");
				document.write("@font-face {font-family:\"BodoniEgyptianPro-Bold\";src:url(\"" + path + "/webfonts/ttf/style_196039.ttf\");}\n");
				document.write("@font-face {font-family:\"BodoniEgyptianPro-Regular\";src:url(\"" + path + "/webfonts/ttf/style_196043.ttf\");}\n");
				document.write("</style>");
		break;
	
	

		case 'svg':
		document.write("<style>\n");
				document.write("@font-face {font-family:\"BodoniEgyptianPro-Bold\";src:url(\"" + path + "/webfonts/svg/style_196039.svg#BodoniEgyptianPro-Bold\") format(\"svg\");}\n");
				document.write("@font-face {font-family:\"BodoniEgyptianPro-Regular\";src:url(\"" + path + "/webfonts/svg/style_196043.svg#BodoniEgyptianPro-Regular\") format(\"svg\");}\n");
				document.write("</style>");
		break;
		
	default:
		break;
}