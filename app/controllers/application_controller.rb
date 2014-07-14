class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_banner





private

  def set_banner
    the_banners = [
      "<a href='http://track.adwad.ru/SH2AV'>
        <img src='https://dl.dropboxusercontent.com/u/15506610/warframe/13957476685731.jpg'>
      </a><img src='http://track.adwad.ru/aff_i?offer_id=272&aff_id=7896&aff_sub=static&aff_sub2=flashvert1&aff_sub3=flashvert2&aff_sub4=squareflash1&tiny_url=1' width='1' height='1' />",

      "<a href='http://track.adwad.ru/SH2AX'><object type='application/x-shockwave-flash' data='https://dl.dropboxusercontent.com/u/15506610/warframe/13844256098111.swf' 
    width='240' height='570'> 
    <param name='movie' value='https://dl.dropboxusercontent.com/u/15506610/warframe/13844256098111.swf' />
    <param name='quality' value='high' />
    </object></a><img src='http://track.adwad.ru/aff_i?offer_id=272&aff_id=7896&aff_sub=static&aff_sub2=flashvert1&aff_sub3=flashvert2&aff_sub4=squareflash1&tiny_url=1' width='1' height='1' />", 

    "<a href='http://track.adwad.ru/SH2AZ'><object type='application/x-shockwave-flash' data='https://dl.dropboxusercontent.com/u/15506610/warframe/13844256157864.swf' 
    width='240' height='570'> 
    <param name='movie' value='https://dl.dropboxusercontent.com/u/15506610/warframe/13844256157864.swf' />
    <param name='quality' value='high' />
    </object></a><img src='http://track.adwad.ru/aff_i?offer_id=272&aff_id=7896&aff_sub=static&aff_sub2=flashvert1&aff_sub3=flashvert2&aff_sub4=squareflash1&tiny_url=1' width='1' height='1' />",
    "<a href='http://track.adwad.ru/SH2Ad'><object type='application/x-shockwave-flash' data='https://dl.dropboxusercontent.com/u/15506610/warframe/13844256220238.swf' 
    width='240' height='240'> 
    <param name='movie' value='https://dl.dropboxusercontent.com/u/15506610/warframe/13844256220238.swf' />
    <param name='quality' value='high' />
    </object></a><img src='http://track.adwad.ru/aff_i?offer_id=272&aff_id=7896&aff_sub=static&aff_sub2=flashvert1&aff_sub3=flashvert2&aff_sub4=squareflash1&tiny_url=1' width='1' height='1' />",

    "<a href='http://track.adwad.ru/SH2Ah'><object type='application/x-shockwave-flash' data='https://dl.dropboxusercontent.com/u/15506610/Prime/1395937196678.swf' 
    width='240' height='240'> 
    <param name='movie' value='https://dl.dropboxusercontent.com/u/15506610/Prime/1395937196678.swf' />
    <param name='quality' value='high' />
    </object></a><img src='http://track.adwad.ru/aff_i?offer_id=1441&aff_id=7896&aff_sub=squafl1&aff_sub2=flavert1&aff_sub3=flasq2&aff_sub4=flavert2&aff_sub5=vertwiz1&tiny_url=1' width='1' height='1' />",

    "<a href='http://track.adwad.ru/SH2Aj'><object type='application/x-shockwave-flash' data='https://dl.dropboxusercontent.com/u/15506610/Prime/13959371650758.swf' 
    width='240' height='570'> 
    <param name='movie' value='https://dl.dropboxusercontent.com/u/15506610/Prime/13959371650758.swf' />
    <param name='quality' value='high' />
    </object></a><img src='http://track.adwad.ru/aff_i?offer_id=1441&aff_id=7896&aff_sub=squafl1&aff_sub2=flavert1&aff_sub3=flasq2&aff_sub4=flavert2&aff_sub5=vertwiz1&tiny_url=1' width='1' height='1' />",

    "<a href='http://track.adwad.ru/SH2An'><object type='application/x-shockwave-flash' data='https://dl.dropboxusercontent.com/u/15506610/Prime/13959372113233.swf' 
    width='240' height='240'> 
    <param name='movie' value='https://dl.dropboxusercontent.com/u/15506610/Prime/13959372113233.swf' />
    <param name='quality' value='high' />
    </object></a><img src='http://track.adwad.ru/aff_i?offer_id=1441&aff_id=7896&aff_sub=squafl1&aff_sub2=flavert1&aff_sub3=flasq2&aff_sub4=flavert2&aff_sub5=vertwiz1&tiny_url=1' width='1' height='1' />",

    "<a href='http://track.adwad.ru/SH2Ap'><object type='application/x-shockwave-flash' data='https://dl.dropboxusercontent.com/u/15506610/Prime/13959372246825.swf' 
    width='240' height='500'> 
    <param name='movie' value='https://dl.dropboxusercontent.com/u/15506610/Prime/13959372246825.swf' />
    <param name='quality' value='high' />
    </object></a><img src='http://track.adwad.ru/aff_i?offer_id=1441&aff_id=7896&aff_sub=squafl1&aff_sub2=flavert1&aff_sub3=flasq2&aff_sub4=flavert2&aff_sub5=vertwiz1&tiny_url=1' width='1' height='1' />",
    

    "<a href='http://track.adwad.ru/SH2Ar'><object type='application/x-shockwave-flash' data='https://dl.dropboxusercontent.com/u/15506610/Prime/13959373450554.swf' 
    width='240' height='570'> 
    <param name='movie' value='https://dl.dropboxusercontent.com/u/15506610/Prime/13959373450554.swf' />
    <param name='quality' value='high' />
    </object></a><img src='http://track.adwad.ru/aff_i?offer_id=1441&aff_id=7896&aff_sub=squafl1&aff_sub2=flavert1&aff_sub3=flasq2&aff_sub4=flavert2&aff_sub5=vertwiz1&tiny_url=1' width='1' height='1' />",
    

    "<a href='http://track.adwad.ru/SH2An'><object type='application/x-shockwave-flash' data='https://dl.dropboxusercontent.com/u/15506610/Prime/13959372113233.swf' 
    width='240' height='240'> 
    <param name='movie' value='https://dl.dropboxusercontent.com/u/15506610/Prime/13959372113233.swf' />
    <param name='quality' value='high' />
    </object></a><img src='http://track.adwad.ru/aff_i?offer_id=1441&aff_id=7896&aff_sub=squafl1&aff_sub2=flavert1&aff_sub3=flasq2&aff_sub4=flavert2&aff_sub5=vertwiz1&tiny_url=1' width='1' height='1' />",

    "<a href='http://track.adwad.ru/SH2Athttp://track.adwad.ru/SH2Av'>
        <img src='https://dl.dropboxusercontent.com/u/15506610/Prime/13959367904027.jpg'>
      </a><img src='http://track.adwad.ru/aff_i?offer_id=1441&aff_id=7896&aff_sub=squafl1&aff_sub2=flavert1&aff_sub3=flasq2&aff_sub4=flavert2&aff_sub5=vertwiz1&tiny_url=1' width='1' height='1' />",

      "<a href='http://track.adwad.ru/SH2Athttp://track.adwad.ru/SH2Av'>
        <img src='https://dl.dropboxusercontent.com/u/15506610/Prime/13959368034536.jpg'>
      </a><img src='http://track.adwad.ru/aff_i?offer_id=1441&aff_id=7896&aff_sub=squafl1&aff_sub2=flavert1&aff_sub3=flasq2&aff_sub4=flavert2&aff_sub5=vertwiz1&tiny_url=1' width='1' height='1' />",

      "<a href='http://track.adwad.ru/SH2Athttp://track.adwad.ru/SH2Av'>
        <img src='https://dl.dropboxusercontent.com/u/15506610/Prime/13959368181976.jpg'>
      </a><img src='http://track.adwad.ru/aff_i?offer_id=1441&aff_id=7896&aff_sub=squafl1&aff_sub2=flavert1&aff_sub3=flasq2&aff_sub4=flavert2&aff_sub5=vertwiz1&tiny_url=1' width='1' height='1' />",

      "<a href='http://track.adwad.ru/SH2Athttp://track.adwad.ru/SH2Av'>
        <img src='https://dl.dropboxusercontent.com/u/15506610/Prime/13959368218977.jpg'>
      </a><img src='http://track.adwad.ru/aff_i?offer_id=1441&aff_id=7896&aff_sub=squafl1&aff_sub2=flavert1&aff_sub3=flasq2&aff_sub4=flavert2&aff_sub5=vertwiz1&tiny_url=1' width='1' height='1' />",

      "<a href='http://track.adwad.ru/SH2Athttp://track.adwad.ru/SH2Av'>
        <img src='https://dl.dropboxusercontent.com/u/15506610/Prime/13959368259148.jpg'>
      </a><img src='http://track.adwad.ru/aff_i?offer_id=1441&aff_id=7896&aff_sub=squafl1&aff_sub2=flavert1&aff_sub3=flasq2&aff_sub4=flavert2&aff_sub5=vertwiz1&tiny_url=1' width='1' height='1' />",

      "<a href='http://track.adwad.ru/SH2Athttp://track.adwad.ru/SH2Av'>
        <img src='https://dl.dropboxusercontent.com/u/15506610/Prime/13959368294038.jpg'>
      </a><img src='http://track.adwad.ru/aff_i?offer_id=1441&aff_id=7896&aff_sub=squafl1&aff_sub2=flavert1&aff_sub3=flasq2&aff_sub4=flavert2&aff_sub5=vertwiz1&tiny_url=1' width='1' height='1' />",

      "<a href='http://track.adwad.ru/SH2Athttp://track.adwad.ru/SH2Av'>
        <img src='https://dl.dropboxusercontent.com/u/15506610/Prime/13959370021633.jpg' width=240>
      </a><img src='http://track.adwad.ru/aff_i?offer_id=1441&aff_id=7896&aff_sub=squafl1&aff_sub2=flavert1&aff_sub3=flasq2&aff_sub4=flavert2&aff_sub5=vertwiz1&tiny_url=1' width='1' height='1' />",

      "<a href='http://track.adwad.ru/SH2Av'>
        <img src='https://dl.dropboxusercontent.com/u/15506610/Prime/13965169871169.jpg'>
      </a><img src='http://track.adwad.ru/aff_i?offer_id=1441&aff_id=7896&aff_sub=squafl1&aff_sub2=flavert1&aff_sub3=flasq2&aff_sub4=flavert2&aff_sub5=vertwiz1&tiny_url=1' width='1' height='1' />",

      "<a href='http://track.adwad.ru/SH2Av'>
        <img src='https://dl.dropboxusercontent.com/u/15506610/Prime/13965170083896.jpg' width=240>
      </a><img src='http://track.adwad.ru/aff_i?offer_id=1441&aff_id=7896&aff_sub=squafl1&aff_sub2=flavert1&aff_sub3=flasq2&aff_sub4=flavert2&aff_sub5=vertwiz1&tiny_url=1' width='1' height='1' />",
    

      
    ]

    @random_banner = the_banners.sample.html_safe
  end
end


#https://dl.dropboxusercontent.com/u/15506610/warframe/13957476685731.jpg
