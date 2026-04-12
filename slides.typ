#import "@preview/touying:0.6.1": *
#import "cintheme.typ": *

#show: cintheme.with(
  aspect-ratio: "16-9",
  // Add your presentation info
  config-info(
    title: [Feature Modelling],
    author: [Enzo Gurgel Bissoli(egb2)],
    date: datetime.today(),
    institution: [UFPE CIn],
    logo: image("cinhorizontalmark.png",height: 1.5cm) ,  // Optional
    logoalternative: image("cinhorizontalmarkcolored.png", height: 1.5cm),
    placeholder: [],
  ),
)

#title-slide()
#show link: underline

= Feature Modeling Exercises

#slide()[
  == Fundamentos de Modelagem de Features
  #grid(
  columns: (1fr, 1fr),
  column-gutter: 0.5em,
  align(center)[
  #v(0.25fr)
  #image("assets/featureModellingQ1.png", height: 9cm)
  #v(1fr)
  ],
  align(left)[
    #v(0.25fr)
    #text(12pt, fill: blue,weight: "bold")[
      a) Um modelo de feature é um modelo que define quais os possíveis produtos de uma linha de produtos de software, para tal o modelo codifica cada produto como uma expressão booleana tal que cada literal é uma feature.
      Modelo de features são essenciais para lidar com problemas de variabilidade em escala, guiar implementação, manutenção e evolução de produtos e ser um artefato para alinhamento de decisão com stakeholders.
    ] 
    #text(11pt, fill: blue,weight: "bold")[

      b) O modelo apresentado define o conceito de um aplicativo móvel (root node) e cada feature no espaço do problema é mapeada em nós intermediários (Login, Notifications, Payment e Analytics) por fim o modelo apresenta um mapeamento para espaço de solução através de features que estão agrupadas nos nós intermediários.
      Na análise do diagrama temos que login é uma feature mutuamente exclusiva, notifications é um caso de features opcionais, payment é um caso de features mutuamente exclusivas mas ao menos uma deve estar presente.
      Suponha a configuração [M, (L,N), (G)] é uma configuração válida pois o equivalente do primeiro cross-tree constraint é ~G -> ~P e isso é verdadeiro, Payment nunca foi selecionado então continua com semântica válida, Analytics continua com semântica válida.
      a outra equivalente é ~CreditCard -> ~Analytics e é verdadeiro e por fim ~InApp -> ~PayPal que é verdadeiro.
      Agora suponha a seguinte configuração [M, (L,P), (G,IA,PPL)], temos que a configuração é inválida visto que falta selecionar a feature de notifications. 
    ]
    #v(1fr)
  ]
  )
  ]

#slide()[
  == Análise de Modelo de Features
  #grid(
  columns: (1fr, 1fr),
  column-gutter: 0.5em,
    align(center)[
    #v(0.25fr)
      #image("assets/featureModelingQ2.png", height: 12cm, width: 11cm)
    #v(1fr)
    ],
    align(left)[
      #text(10pt, fill: blue,weight: "semibold")[
       a) Temos que 

       $("FLAC" or "~Internal Memory") -> ~"Wifi"$,

       $~"InternalMemory" -> ~"Bluethooth"$ 

       $"SDCard" -> ~"WiFi"$

       sabemos que Playback é uma feature obrigatória toda vez que a feature MusicPlayer é selecionada, além disso é necessário a escolha de exclusivamente uma feature "filha" de Playback, por exemplo MP3.
       Sendo assim temos:

       $({"MusicPlayer", "Playback", "MP3"}, {"FLAC", "Connectivity", "Bluethooth", "WiFi", "Storage", "SDCard", "InternalMemory"})$

       logo é possível realizar uma derivação válida, o modelo de features não é vazio.

       b) As únicas features, core, são MusicPlayer e Playback, já features mortas temos zero.

       c) $"PlayBack" -> ~"InternalMemory"$ 

       d) Pode ser usado para detectar uma feature morta, assumindo que sempre que tal feature for selecionada nenhum produto válido pode ser produzido
      ]
    ]
  )
]

