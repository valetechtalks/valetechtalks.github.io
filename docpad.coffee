module.exports =
  prompts: false

  # Plugin configuration
  plugins:
    ghpages:
      deployBranch: 'master'

  # These are variables will be accessible via our templates
  templateData:
    # Conference info
    conf:
      name: 'Vale dos Desenvolvedores'
      description: 'Valley of Developers Meetup Roadmap 2017'
      date: '18/Nov de 2017'
      # If your event is free, just comment this line
      # price: '$100',
      venue: 'Universidade Feevale'
      address: 'ERS-239, 2755'
      city: 'Novo Hamburgo'
      state: 'RS'
      complement: 'Auditório do prédio Azul'

    # The Call To Action button at the header,
    # If you don't want this, just remove the callToAction property.
    callToAction:
      text: 'Confirme sua presença'
      link: 'https://www.meetup.com/Vale-dos-Desenvolvedores/events/245079161/'

    # 'Fork me on GitHub', if you don't want this,
    # just remove the forkButton property
    # forkButton:
    #   repository: 'https://github.com/valleyofdevelopers/valleyofdevelopers.github.io'

    # Site info
    site:
      theme: 'yellow-swan'
      url: 'https://valleyofdevelopers.github.io/'
      googleanalytics: 'UA-104968748-1'
      googleMapsApiKey: 'AIzaSyA2RQp4qEQfzRBgj6oyaa70uDp7nnIARUg'

    # Active sections on the website
    # to deactivate comment out with '//'
    # you can also change order here and it will reflect on page
    sections: [
      'about'
      'location'
      'speakers'
      'schedule'
      # 'callforpapers'
      'sponsors'
      'partners'
      'contact'
    ]

    # Labels which you can translate to other languages
    labels:
      about: 'Sobre'
      location: 'Localização'
      speakers: 'Palestrantes'
      schedule: 'Programação'
      callforpapers: 'Chamada para Trabalhos'
      sponsors: 'Patrocinadores'
      partners: 'Apoio'
      contact: 'Contato'

    # The entire schedule
    schedule: [
      name: 'Palmer Oliveira',
      email: 'expalmer@gmail.com',
      photo: 'themes/yellow-swan/img/palmer.jpg',
      bio: 'Palmer Oliveira trabalha como Web Developer a mais de 7 anos, é um entusiasta Javascript e estudante de Ciência da Computação na Ulbra Gravataí. Tem uma profunda vontade de aprender e entender como as coisas funcionam.',
      company: 'Renove3',
      link:
        href: 'https://expalmer.github.io',
        text: 'Website'
      presentation:
        title: 'Conhecendo o Event Loop no Node',
        description: 'O Event Loop em NodeJs é um dos conceitos mais importantes de se entender para que possamos escrever códigos melhores e tomar proveito de seu famoso I/O não bloqueante. Portanto iremos ver como funciona a implementação do Event Loop na plataforma Nodejs feita pela incrível LIBUV.',
        date: 'Sábado, 18 de Novembro de 2017',
        time: '13:00'
    ,
      name: 'Rafael Serpa Nery',
      email: 'rafael@nery.info',
      photo: 'themes/yellow-swan/img/rafael-nery.jpg',
      bio: 'Coordenador de Desenvolvimento de Sistemas na Empresa Libre Soluções de Governo. Envolvido com desenvolvimento de Software desde 2004 com PHP/JS/PostgreSQL. ',
      company: '',
      link:
        href: '',
        text: ''
      presentation:
        title: 'Gerenciamento de Dependências com Composer',
        description: 'Talk fala sobre a história e utilização do gerenciador de dependências do PHP, o Composer.',
        date: 'Sábado, 18 de Novembro de 2017',
        time: '14:00'
    # ,
    #   name: 'Coffee-Break',
    #   date: 'Sábado, 18 de Novembro de 2017',
    #   time: '15:00'
    ,
      name: 'Thiago Alves Luiz',
      email: 'taltk9@gmail.com',
      photo: 'themes/yellow-swan/img/thiago.jpg',
      bio: 'Thiago is a front end and JavaScript developer, living in Novo Hamburgo, in Southern Brazil. He started web development over ten years ago building websites for publicity agencies. After this he spent a time developing ERP products at web plataform. He currently specializes in JavaScript applications (specially React applications) and is a Front End Developer at Codeminer 42 in Novo Hamburgo.',
      company: 'Codeminer 42',
      link:
        href: 'https://www.linkedin.com/in/thiagoalvesluiz/',
        text: 'Linkedin'
      presentation:
        title: 'How to enjoy WebVR right now',
        description: 'WebVR is an open standard that makes it possible to experience VR in your browser. There are some limits to use this technology in browsers but it is already possible. Lets see how to start VR studies, produce content to use within, some possibilities that it brings and how to enjoy it right now.',
        date: 'Sábado, 18 de Novembro de 2017',
        time: '15:15'
    # ,
    #   name: 'Happy Hour',
    #   date: 'Sábado, 18 de Novembro de 2017',
    #   time: '18:00'
    ]

    # Call for Papers info
    callforpapers:
      url: 'https://goo.gl/forms/Jyeqyrd1dwi2w3752'

    # List of Sponsors
    sponsors: [
      # name: 'Seja um patrocinador'
      # logo: 'themes/yellow-swan/img/seja-um-patrocinador.jpg'
    ]

    # List of Partners
    partners: [
      name: 'Codeminer 42'
      logo: 'themes/yellow-swan/img/codeminer42.jpg'
      url: 'http://codeminer42.com'
    ,
      name: 'Universidade Feevale'
      logo: 'themes/yellow-swan/img/feevale.jpg'
      url: 'http://feevale.br'
    ]

    contacts: [
      name: 'Paulo Diovani'
      email: 'paulo@diovani.com'
    ,
      name: 'Rodrigo Boniatti'
      email: 'boniatti.rodrigo@gmail.com'
    ]

    # Theme path
    getTheme: ->
      'themes/' + @site.theme

    # Site Path
    getUrl: ->
      @site.url
