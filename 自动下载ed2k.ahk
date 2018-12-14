#Include 显示通知.ahk
CoordMode, Mouse, Screen
Array := ["ed2k://|file|The.Big.Bang.Theory.S10E01.720p.HDTV.X264-DIMENSION.mkv|499781295|E4BBE1343F9275FA0DA759AEEEC34343|h=RCX7JG5LXUDYNNODFXTTXUNJBFMTK6SI|/","ed2k://|file|The.Big.Bang.Theory.S10E02.720p.HDTV.X264-DIMENSION.mkv|416962786|06C80F0241282350BDCE3E4EDDFA20DA|h=RBUUKCQ6HKN2TDKHVSVAQXTEBHYGL2RA|/","ed2k://|file|The.Big.Bang.Theory.S10E03.720p.HDTV.X264-DIMENSION.mkv|436519249|932A7645F3347DCB4F5EE407D1A428F4|h=WGXWLNS63VSJU3SUF5SSMWSMRDUJQPL5|/","ed2k://|file|The.Big.Bang.Theory.S10E04.720p.HDTV.X264-DIMENSION.mkv|491975630|0B1889F6C3912466672523D312BA7E83|h=IT7SVAYQS4MXB2O2JAMEFTV6D4LZGJGO|/","ed2k://|file|The.Big.Bang.Theory.S10E06.720p.HDTV.X264-DIMENSION.mkv|505142992|6DA46BC387B2AC1C0B438350BA6D2ECE|h=PZQOQCXOAF6VH7NOLHAYAEDNRXIXGI56|/","ed2k://|file|The.Big.Bang.Theory.S10E07.720p.HDTV.X264-DIMENSION.mkv|504058869|BC59A247F889064F9C6EFB40449B2AC1|h=AAYUBT46MOUB4O6GFUUAQ6JZ274RST34|/","ed2k://|file|The.Big.Bang.Theory.S10E08.720p.HDTV.X264-DIMENSION.mkv|407800256|6436064AAD069F6D56690E3AB962E268|h=UIO35NWN6ZK3N6BTHPNDC57YUIYLZPDS|/","ed2k://|file|The.Big.Bang.Theory.S10E09.720p.HDTV.X264-DIMENSION.mkv|402835838|AA6019990DEA847325703139C0B5A9B3|h=X3SFRKT23722LKGLS5U6WN34IEIAARMU|/","ed2k://|file|The.Big.Bang.Theory.S10E10.720p.HDTV.X264-DIMENSION.mkv|421186854|6CC878FDB5E88A1C78125479FFB9BE99|h=F234XQ2LTQUM3HDFKPYLT4GM4Z4I7IAU|/","ed2k://|file|The.Big.Bang.Theory.S10E11.720p.HDTV.X264-DIMENSION.mkv|434080544|D5D75281681604236909ADD85DB98B91|h=R7AI5L424Z47PGLMAM6DOQ2X7UWUJM3E|/","ed2k://|file|The.Big.Bang.Theory.S10E12.720p.HDTV.X264-DIMENSION.mkv|421887043|9ACF4C854CE2D587942BDE37AFE85D1D|h=NAHZRVEL3KRC4QXERX35LR3UW7ONRBE2|/","ed2k://|file|The.Big.Bang.Theory.S10E13.720p.HDTV.X264-DIMENSION.mkv|410181971|DECA8A321AA7E873BD439FAED2327C74|h=ITFEKE7BNL2NDUJKBZXA2YJB2Z6XY2RZ|/"]







;Array1 := ["ed2k://|file|The.Big.Bang.Theory.S10E01.The.Conjugal.Conjecture.1080p.WEB-DL.DD5.1.H.264-BTN.mkv|904703814|17C5B14EDC76455609029456AF5ACF4F|h=XICV33K2XUF3Z5L2DGTKIX4Y7KCAYBV3|/","magnet:?xt=urn:btih:131b31719d637e0d5126c147159dd5e0dd3dd062&amp;dn=The.Big.Bang.Theory.S10E01.The.Conjugal.Conjecture.1080p.WEB-DL.DD5.1.H264-BTN%5Brartv%5D&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S10E02.The.Military.Miniaturization.1080p.WEB-DL.DD5.1.H.264-BTN.mkv|781694862|D6010AFD06020DD3E859B3D119AFEE90|h=DT2MBBDOI6DDSP6MVLJRZZNGOGDWPEGW|/","magnet:?xt=urn:btih:bc0ac797437f0a191110a3cb17accedee30ca591&amp;dn=The.Big.Bang.Theory.S10E02.The.Military.Miniaturization.1080p.WEB-DL.DD5.1.H264-BTN%5Brartv%5D&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S10E03.The.Dependence.Transcendence.1080p.WEB-DL.DD5.1.H.264-BTN.mkv|846239418|6A6619DEC0A471781E969EA662E62E78|h=X3VKZS6K4HUI5JRIPQTLF4XR4AYRGJZU|/","magnet:?xt=urn:btih:b494b441df2ed5e3449941123e08097021d55159&amp;dn=The.Big.Bang.Theory.S10E03.The.Dependence.Transcendence.1080p.WEB-DL.DD5.1.H264-BTN%5Brartv%5D&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S10E04.The.Cohabitation.Experimentation.1080p.WEB-DL.DD5.1.H.264-BTN.mkv|849480052|7343AF9E03BDD51EFDBF58FC6BC40C2F|h=VT7ANRD2DDNWKCFWZHGPUDWKXPYUZOEW|/","magnet:?xt=urn:btih:6c74a0b183deaba8f365ab629b10dd23cf15c082&amp;dn=The.Big.Bang.Theory.S10E04.The.Cohabitation.Experimentation.1080p.WEB-DL.DD5.1.H264-BTN%5Brartv%5D&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S10E05.The.Hot.Tub.Contamination.1080p.WEB-DL.DD5.1.H.264-BTN.mkv|820159665|CBC3CA6460A774A3FED239B341F8C469|h=SK65JFWX5MIEQZZCKV2G7IOLSOJYSV7M|/","magnet:?xt=urn:btih:7b930f916b573dc7b87abf5415abf81c25a1ffda&amp;dn=The.Big.Bang.Theory.S10E05.The.Hot.Tub.Contamination.1080p.WEB-DL.DD5.1.H264-BTN%5Brartv%5D&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S10E06.The.Fetal.Kick.Catalyst.1080p.WEB-DL.DD5.1.H.264-BTN.mkv|760668163|EF0F386104D27A7B4FC06045AF6400FD|h=FAEJSXHKQLJWHX4ZRPQGJ5ZX4BXGYCLD|/","magnet:?xt=urn:btih:798d98c568bdd3836ab88f439067c17c43bb9b27&amp;dn=The.Big.Bang.Theory.S10E06.The.Fetal.Kick.Catalyst.1080p.WEB-DL.DD5.1.H264-BTN%5Brartv%5D&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S10E07.The.Veracity.Elasticity.1080p.WEB-DL.DD5.1.H.264-BTN.mkv|857529040|33A8B3C0B131E3A046DD19AB7F766090|h=LGY3LCEZS42EEG2V66DDL7MWDC3Q7SDZ|/","magnet:?xt=urn:btih:b9686619d4f58e685a9a14e7982c05030370f8c8&amp;dn=The.Big.Bang.Theory.S10E07.The.Veracity.Elasticity.1080p.WEB-DL.DD5.1.H264-BTN%5Brartv%5D&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S10E08.The.Brain.Bowl.Incubation.1080p.WEB-DL.DD5.1.H.264-R2D2.mkv|783514956|2BB5F0D66FAD12E388C112EDACCBFA61|h=L4XBFJQYHNW27IABUGPVOBX6VRHTRZK4|/","magnet:?xt=urn:btih:6a7d99fc88f35f26ec8000e01a2d567f58486906&amp;dn=The.Big.Bang.Theory.S10E08.The.Brain.Bowl.Incubation.1080p.WEB-DL.DD5.1.H264-R2D2%5Brartv%5D&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S10E09.The.Geology.Elevation.1080p.WEB-DL.DD5.1.H.264-R2D2.mkv|804598455|55C532A92B919F232E1F1A033005A10F|h=RYO4HA3QTCEVIMGSZQTVJCD3WEKKTE64|/","ed2k://|file|The.Big.Bang.Theory.S10E10.The.Property.Collision.1080p.WEB-DL.DD5.1.H.264-R2D2.mkv|823696392|C692C3442F3B8D273C252815104DB18A|h=PDIUZR5STVZV37DFU5PBY7CHNTCOSPHL|/","magnet:?xt=urn:btih:2ab75b80a3403c1ca380defd4b9eebd504a2abc4&amp;dn=The.Big.Bang.Theory.S10E10.The.Property.Collision.1080p.WEB-DL.DD5.1.H264-R2D2%5Brartv%5D&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S10E11.The.Birthday.Synchronicity.1080p.WEB-DL.DD5.1.H.264-R2D2.mkv|851318205|89B8737447C140F72B4A2BA84864363B|h=MZQ5DNOZDW7NOW4RYW6HIQUJFO4RKWOC|/","magnet:?xt=urn:btih:49b75e1fc872b2a282a88973610c04233e46d71f&amp;dn=The.Big.Bang.Theory.S10E11.The.Birthday.Synchronicity.1080p.WEB-DL.DD5.1.H264-R2D2%5Brartv%5D&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S10E12.Holiday.Summation.1080p.WEB-DL.DD5.1.H.264-R2D2.mkv|881036799|800971C187768BE23661F11E72E6E2F9|h=PXS4D2MHNEJNVD2DSATVXHSJMPPT32NA|/","magnet:?xt=urn:btih:125cc382d38929daaab9c8c579ac0966dba5bd97&amp;dn=The.Big.Bang.Theory.S10E12.Holiday.Summation.1080p.WEB-DL.DD5.1.H264-R2D2%5Brartv%5D&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S10E13.The.Romance.Recalibration.1080p.WEB-DL.DD5.1.H.264-R2D2.mkv|778366607|48B74AED98F9ABBF94C11FEAFB764D74|h=ZUFLP7R2UAYCWZG4PUCSQUXUCVAGQ6SX|/","magnet:?xt=urn:btih:699e5e1eeaa77cc27fb4399ad4688cc9406b902d&amp;dn=The.Big.Bang.Theory.S10E13.The.Romance.Recalibration.1080p.WEB-DL.DD5.1.H264-R2D2%5Brartv%5D&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S10E14.1080p.WEB-DL.DD5.1.H264-RARBG.mkv|818562616|2FFCC90D475AB093FA2C17E4114763A1|h=ABSZOMN52POPMBT35FCDDEYHXOSUZ6UA|/","magnet:?xt=urn:btih:c280d3dfdd99edf608c417356d048328f90e2406&amp;dn=The.Big.Bang.Theory.S10E14.1080p.WEB-DL.DD5.1.H264-RARBG&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S10E15.1080p.WEB-DL.DD5.1.H264-RARBG.mkv|850410176|0D1F673254D2D315FDBC95CF69423CFC|h=EJCD3EBJVBOJHZYWSWNERKZUWQHTWLYK|/","magnet:?xt=urn:btih:5401617fc5546f7312b171de6e04522f9fb714da&amp;dn=The.Big.Bang.Theory.S10E15.1080p.WEB-DL.DD5.1.H264-RARBG&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S10E16.1080p.WEB-DL.DD5.1.H264-RARBG.mkv|741050058|9D1291029D8313C7D73B3639ED333E69|h=B4CYJBIVIIG7EHMNB2KIEQACR4K5RRXV|/","magnet:?xt=urn:btih:16702309278fe109bd9a7c7d4825c9005cfe4a91&amp;dn=The.Big.Bang.Theory.S10E16.1080p.WEB-DL.DD5.1.H264-RARBG&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S10E17.1080p.WEB-DL.DD5.1.H264-RARBG.mkv|814346914|51C394DFCC3923573D4DF2EC5919D65F|h=543D45UA3XQROWMEHNGBBQQHAZDXGXD3|/","magnet:?xt=urn:btih:9c8856a7c08c7aaa9e06131c588f2e2bf5871639&amp;dn=The.Big.Bang.Theory.S10E17.1080p.WEB-DL.DD5.1.H264-RARBG&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S10E18.1080p.WEB-DL.DD5.1.H264-RARBG.mkv|829334391|1677675B46499E730FEC37E0FB258FB5|h=U765C2OUU2FRPSJICQIPYR5SDMBEAU5S|/","magnet:?xt=urn:btih:b957b1b675c773ffef152a45f580c34fcfc7d242&amp;dn=The.Catch.S02E01.1080p.WEB-DL.DD5.1.H264-RARBG&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S10E19.1080p.WEB-DL.DD5.1.H264-RARBG.mkv|775026919|543CD9B04D1CF2284FFFC2BB16332ECA|h=XSEA46THNXH4A72372GIL2VJR2ENA564|/","magnet:?xt=urn:btih:78e81a558e0d43f3e67c80b41b4f7dfa0a26fb6a&amp;dn=The.Big.Bang.Theory.S10E19.1080p.WEB-DL.DD5.1.H264-RARBG&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S10E20.1080p.WEB-DL.DD5.1.H264-RARBG.mkv|800434219|44F5183C71B41B377E580E41F49F06F3|h=QI4IPYFDUN3DQCNJ46ZDQMNV55CQB3GU|/","magnet:?xt=urn:btih:ad080feec4fe2a9c7835d125378a4296a92acdd1&amp;dn=The.Big.Bang.Theory.S10E20.1080p.WEB-DL.DD5.1.H264-RARBG&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S10E21.1080p.WEB-DL.DD5.1.H264-RARBG.mkv|826213353|E3B49D2E53F038C89AB653F20FBF262A|h=MI5U7SIFCWQ2PV54H32VESPT5L32MOSS|/","magnet:?xt=urn:btih:1b182f716338c6c37911d35e46107412f3583c5d&amp;dn=The.Big.Bang.Theory.S10E21.1080p.WEB-DL.DD5.1.H264-RARBG&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S10E22.1080p.WEB-DL.DD5.1.H264-RARBG.mkv|840099196|AD8D2EDE3EEF8E4CC1812B2AB67EDD94|h=ZCRKI346HXGTEQ4LB57ECLCVQMFVP53F|/","magnet:?xt=urn:btih:b7bcdc3521f624595f0ca23d4854821ca47343d0&amp;dn=The.Big.Bang.Theory.S10E22.1080p.WEB-DL.DD5.1.H264-RARBG&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S10E23.1080p.WEB-DL.DD5.1.H264-RARBG.mkv|804910168|7E8EF289DD64EC765D7F281A03B4352C|h=6R4LXI5SM46EMP2QL2P4BRZKI62HAWFH|/","magnet:?xt=urn:btih:8050e646884bcc0078c4a452dac0ac66c3383e12&amp;dn=The.Big.Bang.Theory.S10E23.1080p.WEB-DL.DD5.1.H264-RARBG&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S10E24.1080p.WEB-DL.DD5.1.H264-RARBG.mkv|813944063|67C03C64F29FBAD4C5AADA1D858F3023|h=R2S2SADTB7DVFK5IA4I2I3YIBG7TSN5U|/","magnet:?xt=urn:btih:5a3cc28ea9425c78ed684a4e666e60279534b50b&amp;dn=The.Big.Bang.Theory.S10E24.1080p.WEB-DL.DD5.1.H264-RARBG&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710"]




;Array2 := ["ed2k://|file|Big.Bang.Theory.S11E01.The.Proposal.Proposal.1080p.AMZN.WEB-DL.DD+5.1.H.264-QOQ.mkv|1685150993|C1A20A7CBC74E34A29D15CDCED5A6BFC|h=7ULRYQB2BY6V4ERVGFU4O5BWQ3KADGHB|/","magnet:?xt=urn:btih:56f9cb83bd02ce0486e86909dbd6d02c5d6a97a3&amp;dn=The.Big.Bang.Theory.S11E01.The.Proposal.Proposal.1080p.AMZN.WEBRip.DDP5.1.x264-QOQ%5Brartv%5D&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S11E02.The.Retraction.Reaction.1080p.Amazon.WEB-DL.DD+5.1.H.264-QOQ.mkv|2224282984|161EA22449BFEC65C3E6E5967E2A564E|h=LVBZBL76ZJEFVBPLDCZUTE47ZQN3JL2V|/","magnet:?xt=urn:btih:c8848908172968e34ab1a78b1ea99e6081eca654&amp;dn=The.Big.Bang.Theory.S11E02.The.Retraction.Reaction.1080p.WEB-DL.DD5.1.H264-YFN%5Brartv%5D&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S11E03.The.Relaxation.Integration.1080p.Amazon.WEB-DL.DD+5.1.H.264-QOQ.mkv|1964244741|F28E2329EDD562C0164C122FBD1F2405|h=NBLASFQNSGQENDD7SNEFE2OMFY5ZGKSF|/","magnet:?xt=urn:btih:656c0196b293c345abf13609d73a046cd45ec1f8&amp;dn=The.Big.Bang.Theory.S11E03.The.Relaxation.Integration.1080p.AMZN.WEBRip.DDP5.1.x264-QOQ%5Brartv%5D&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S11E04.The.Explosion.Implosion.1080p.Amazon.WEB-DL.DD+5.1.H.264-QOQ.mkv|1779443875|9B21E725653CF141A4FFDE60387985D0|h=ZMP64QSMV7NVJBUK625L4E6CJY7PBAXU|/","magnet:?xt=urn:btih:ca2600bbd57a2169526c1fef9202dca30b36dcaf&amp;dn=The.Big.Bang.Theory.S11E04.1080p.AMZN.WEBRip.DDP5.1.x264-QOQ%5Brartv%5D&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S11E05.The.Collaboration.Contamination.1080p.AMZN.WEB-DL.DD+5.1.H.264-QOQ.mkv|1721609760|9F3DDAF05F38A347C564E806B840D098|h=2H7GI3PI5VTMNXCD23WXQASZDDY3G6QQ|/","magnet:?xt=urn:btih:3070f144d38968d5278732fc6099d3326777c954&amp;dn=The.Big.Bang.Theory.S11E05.The.Collaboration.Contamination.1080p.AMZN.WEBRip.DDP5.1.x264-QOQ%5Brartv%5D&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S11E06.The.Proton.Regeneration.1080p.Amazon.WEB-DL.DD+5.1.H.264-QOQ.mkv|1994660147|9963B4B723020F581300A0A56C4A8D13|h=2TOZA63M5FJN7OYO5PFR6TXJO5PHYI36|/","magnet:?xt=urn:btih:83ecd1fb787d99e14d873a4019fde8668ba3b55b&amp;dn=The.Big.Bang.Theory.S11E06.The.Proton.Regeneration.1080p.AMZN.WEBRip.DDP5.1.x264-QOQ%5Brartv%5D&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S11E07.The.Geology.Methodology.1080p.Amazon.WEB-DL.DD+5.1.H.264-QOQ.mkv|1907324267|2B0A2729EC1C272DB8A3186D53D25826|h=LOUCDMJSDLK4ZYOSYX2U46WBIVQ5555C|/","magnet:?xt=urn:btih:0a80e954dd0180194144a9a0838131efa1ab53c2&amp;dn=The.Big.Bang.Theory.S11E07.The.Geology.Methodology.1080p.AMZN.WEBRip.DDP5.1.x264-QOQ%5Brartv%5D&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S11E08.The.Tesla.Recoil.1080p.AMZN.WEB-DL.DD+5.1.H.264-QOQ.mkv|1824236825|B70C4911D28C3531AEFDF6B46ADD9E8F|h=MKS5VNA7MXCJJNKCVLYDOOQMJFLL4RFO|/","magnet:?xt=urn:btih:4cbf7220fa3c4e46ae547cf1a01d7370f5ad0862&amp;dn=The.Big.Bang.Theory.S11E08.The.Tesla.Recoil.1080p.AMZN.WEBRip.DDP5.1.x264-QOQ%5Brartv%5D&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S11E09.The.Bitcoin.Entanglement.1080p.AMZN.WEB-DL.DD+5.1.H.264-QOQ.mkv|1863523681|205F6C999E8B14C3AE17E13F40FFC718|h=O25GHPSKOGT3CF2PYQS3QDVHVBSLOIQF|/","ed2k://|file|The.Big.Bang.Theory.S11E10.The.Confidence.Erosion.1080p.AMZN.WEB-DL.DD+5.1.H.264-QOQ.mkv|2017279415|70B3FFC01D1236A1485FCEC4A11183C6|h=EM6ZISXHHVWB4VNLACSEGBVDP7RYZPSB|/","magnet:?xt=urn:btih:8776c3f1d7ef109a6354a888e159311655c4e1cc&amp;dn=The.Big.Bang.Theory.S11E10.The.Confidence.Erosion.1080p.AMZN.WEBRip.DDP5.1.x264-QOQ%5Brartv%5D&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S11E11.The.Celebration.Reverberation.1080p.AMZN.WEB-DL.DD+5.1.H.264-QOQ.mkv|1773431857|5FAF5112E1ED42BEF68F48351EED9493|h=UFPYV2Z3UF64SEUA32FG2JAHEDZSAQBQ|/","magnet:?xt=urn:btih:7a713cd8c7bf31fcd6d69ec77d59782dffcc2677&amp;dn=The.Big.Bang.Theory.S11E11.The.Celebration.Reverberation.1080p.AMZN.WEBRip.DDP5.1.x264-NTb%5Brartv%5D&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S11E12.The.Matrimonial.Metric.1080p.AMZN.WEB-DL.DD+5.1.H.264-QOQ.mkv|2126090296|479D1CB1FD188B3E532C9096B07002E5|h=ETY62SP6E7SC45PR6AQVZTS3HNW64FRF|/","magnet:?xt=urn:btih:19ae44c2277d2ec15024b95c150b64962353d381&amp;dn=The.Big.Bang.Theory.S11E12.The.Matrimonial.Metric.1080p.AMZN.WEBRip.DDP5.1.x264-QOQ%5Brartv%5D&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S11E13.The.Solo.Oscillation.1080p.AMZN.WEB-DL.DDP5.1.H.264-NTb.mkv|1873518580|484E0C06BD8612F6F86011A33D856AFA|h=SCGCP5JGATV5SKNTHSQC4EITYPHMMRCG|/","magnet:?xt=urn:btih:6d972ebb7bdffd92efd8bec02820ab60b75032a1&amp;dn=The.Big.Bang.Theory.S11E13.The.Solo.Oscillation.1080p.AMZN.WEBRip.DDP5.1.x264-NTb%5Brartv%5D&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S11E14.The.Separation.Triangulation.1080p.AMZN.WEB-DL.DDP5.1.H.264-NTb.mkv|1584940160|CAE35240E983926D0A4B6B11F1E59A32|h=2JVBLJJ2K2623ZOJEDBSD4P5B73BCPZR|/","magnet:?xt=urn:btih:f8b36605ca4b8f39dbe0c1336c2479bdc8660f0a&amp;dn=The.Big.Bang.Theory.S11E14.The.Separation.Triangulation.1080p.AMZN.WEBRip.DDP5.1.x264-NTb%5Brartv%5D&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S11E15.The.Novelization.Correlation.1080p.AMZN.WEB-DL.DDP5.1.H.264-NTb.mkv|1724710866|E54881729C5A23516AFD718255FF262E|h=PTSWA5USEDKARZHWXZT7RDAQCSKK2L7J|/","magnet:?xt=urn:btih:339ebefa5d911db432afd47568ff0882dfbc4fc9&amp;dn=The.Big.Bang.Theory.S11E15.The.Novelization.Correlation.1080p.AMZN.WEBRip.DDP5.1.x264-NTb%5Brartv%5D&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S11E17.The.Athenaeum.Allocation.1080p.AMZN.WEB-DL.DDP5.1.H.264-NTb.mkv|1584420196|0F5D9DDC46D05B4F216D9D1C5CFFB8FA|h=W52V5LGYNHULB6JYN2OUXL5LBWIX6N67|/","magnet:?xt=urn:btih:120df503ad986143e88441c8374f3405dbe343a3&amp;dn=The.Big.Bang.Theory.S11E17.The.Athenaeum.Allocation.1080p.AMZN.WEBRip.DDP5.1.x264-NTb%5Brartv%5D&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S11E18.The.Gates.Excitation.1080p.AMZN.WEB-DL.DDP5.1.H.264-NTb.mkv|1694314989|4D8E4BF8F01D07F26B9FB907E258C89C|h=EXX3X7X3XJX6EPKTV6EFUZWTSUHDY63E|/","magnet:?xt=urn:btih:22a375ef90da1c066dd4359a98852a1a7a0fd3dc&amp;dn=The.Big.Bang.Theory.S11E18.1080p.WEB.x264-TBS%5Brartv%5D&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S11E19.The.Tenant.Disassociation.1080p.AMZN.WEB-DL.DDP5.1.H.264-NTb.mkv|1603523387|1C0302BEF1CE9BBFE9E2B215ECF4933E|h=AF5XBPRRUTRRISTPMCKKG7HGKYFTF2BZ|/","magnet:?xt=urn:btih:82adfe22f3d9c449336d02904a9889f1580e739b&amp;dn=The.Big.Bang.Theory.S11E19.The.Tenant.Disassociation.1080p.AMZN.WEBRip.DDP5.1.x264-NTb%5Brartv%5D&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S11E20.The.Reclusive.Potential.1080p.WEB-DL.DD5.1.H.264-YFN.mkv|885352369|2A663E51372C454BD5AC99DA1C4DB54D|h=4WDQVX27P5R5CXXQWR32CJ6VVNFRLQO3|/","magnet:?xt=urn:btih:ba5591e4c71b3cd09d986f95e12351156f6678de&amp;dn=The.Big.Bang.Theory.S11E20.The.Reclusive.Potential.1080p.WEB-DL.DD5.1.H264-YFN%5Brartv%5D&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S11E21.The.Comet.Polarization.1080p.AMZN.WEB-DL.DDP5.1.H.264-NTb.mkv|1641616602|94668D3A34DB85389EB8C09738A6F21E|h=QJQZ35KEVEWP7JG76QDF64KD4I3KYJHN|/","magnet:?xt=urn:btih:1521971330da94fe651ce62d649bff1e1e3bf439&amp;dn=The.Big.Bang.Theory.S11E21.The.Comet.Polarization.1080p.WEB-DL.DD5.1.H264-YFN%5Brartv%5D&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S11E22.The.Monetary.Insufficiency.1080p.AMZN.WEB-DL.DDP5.1.H.264-NTb.mkv|1681118796|E07E8C73449E82C94D7FB2BF75F4B15A|h=3XJG6IGSMZEQDELFKKLPRGZQSUEJXNFN|/","magnet:?xt=urn:btih:e03e1872c356c92242d0b59aa0aa0b818ff10fc6&amp;dn=The.Big.Bang.Theory.S11E22.The.Monetary.Insufficiency.1080p.WEB-DL.DD5.1.H264-YFN%5Brartv%5D&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S11E23.The.Sibling.Realignment.1080p.AMZN.WEB-DL.DDP5.1.H.264-NTb.mkv|1517500204|E4CD181995AB5FA38FA38A438C5808CE|h=WKAY22OHHIWUXB5DXNLPLWBGI5QHMRC7|/","magnet:?xt=urn:btih:5adb325dfa8fecf6e3582679369fdf7ea38c023c&amp;dn=The.Big.Bang.Theory.S11E23.The.Sibling.Realignment.1080p.WEB-DL.DD5.1.H264-YFN%5Brartv%5D&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710","ed2k://|file|The.Big.Bang.Theory.S11E24.The.Bow.Tie.Asymmetry.1080p.AMZN.WEB-DL.DDP5.1.H.264-NTb.mkv|1673063436|306E56AE906105703ABE149D5E98E841|h=3ORB2YGX2DFJ2WFR7BXWVSP2Y6ZNQX4J|/","magnet:?xt=urn:btih:66daca59ad6b3f1ffe5008718f88a8aa9f0085d4&amp;dn=The.Big.Bang.Theory.S11E24.The.Bow.Tie.Asymmetry.1080p.WEB-DL.DD5.1.H264-YFN%5Brartv%5D&amp;tr=http%3A%2F%2Ftracker.trackerfix.com%3A80%2Fannounce&amp;tr=udp%3A%2F%2F9.rarbg.me%3A2710&amp;tr=udp%3A%2F%2F9.rarbg.to%3A2710"]




Loop % array.Length()
{


		;MsgBox % array[A_Index]
}

getBm(){
	global dm
	global v_loop
	
	if(!dm.ver()){
		dm:=ComObjCreate("dm.dmsoft")
		
		showMsg("重新加载dm" dm.ver())
	} 
	return dm
}

$^r::
{
	Reload
}
return

v1:=1


$5::
{
	
	global v1
	WinGet, id, ID, ahk_class DuiHostWnd ahk_exe BaiduNetdisk.exe,, Program Manager
	;WinActivate, ahk_id %id%
	Loop % array.Length()
	{
		WinActivate, ahk_id %id%
		v := array[A_Index]
		ccccc(v)
			;MsgBox % array[A_Index]
	}
	
 
	
 
}
return

ccccc(msg){
	
		Sleep, 1000
		; 点击新建链接
		Click, 646, 95
		Sleep, 500
		; 点击输入框
		Click, 934, 483
		; 输入链接
		Sleep, 100
		Click, 934, 483
		Send, %msg%
		Sleep, 1700
		; 下载
		Click, 	1169, 637
		Sleep, 3000
		; 后台运行
		Click, 1171, 688 
}
return

$4::
{
	global v1
	WinGet, id, list, ahk_class Chrome_WidgetWin_1,, Program Manager
	
	v := Array[v1]
	;MsgBox, %v%  %v1%
	v1:=v1+1
	
	Loop, %id%
	{	
		;获取pid
		this_id := id%A_Index%
		;MsgBox, %this_id%
		;激活浏览器
		WinActivate, ahk_id %this_id%
		; 点击新建链接
		Click, 827, 436
		Sleep, 500
		; 点击输入框
		Click, 903, 553
		; 输入链接
		
		Send, %v%
		Sleep, 2000
		; 修改网盘目录
		Click, 880, 645
		Sleep, 500
		; 选择目录
		Click, 807, 518
		Sleep, 500
		; 保存选择的目录
		Click, 995, 700 
		Sleep, 500
		; 下载
		Click, 1064, 686
		Sleep, 3000
	}
}
return

	WinGet, id, list, ahk_class Chrome_WidgetWin_1,, Program Manager
	
	v := array[A_Index]
	Loop, %id%
	{	
		;获取pid
		this_id := id%A_Index%
		;MsgBox, %this_id%
		;激活浏览器
		WinActivate, ahk_id %this_id%
		; 点击新建链接
		Click, 827, 436
		Sleep, 500
		; 点击输入框
		Click, 903, 553
		; 输入链接
		
		Send, %v%
		Sleep, 2500
		; 修改网盘目录
		Click, 880, 645
		Sleep, 500
		; 选择目录
		Click, 807, 518
		Sleep, 500
		; 保存选择的目录
		Click, 995, 700 
		Sleep, 500
		; 下载
		Click, 1064, 686
		Sleep, 3000
	}
	
 