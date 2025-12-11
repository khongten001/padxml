unit padconst;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils;

type

  // Enumerations for PAD standard values
  TPadInstallSupport = (
    pisInstallAndUninstall,
    pisInstallOnly,
    pisNoInstallSupport,
    pisUninstallOnly
    );

  TPadProgramType = (
    pptNone,
    pptShareware,
    pptFreeware,
    pptAdware,
    pptDemo,
    pptCommercial,
    pptDataOnly
    );

  TPadReleaseStatus = (
    prsNone,
    prsMajorUpdate,
    prsMinorUpdate,
    prsNewRelease,
    prsBeta,
    prsAlpha,
    prsMediaOnly
    );

  TPadExpireBasedOn = (
    pebNone,
    pebDays,
    pebRuns,
    pebDate,
    pebOther
    );

type
  TPadProgramCategoryClass = (
    pccNone,
    // Audio & Multimedia
    pccAudioMultimedia_AudioEncodersDecoders,
    pccAudioMultimedia_AudioFilePlayers,
    pccAudioMultimedia_AudioFileRecorders,
    pccAudioMultimedia_CDBurners,
    pccAudioMultimedia_CDPlayers,
    pccAudioMultimedia_MultimediaCreationTools,
    pccAudioMultimedia_MusicComposers,
    pccAudioMultimedia_Other,
    pccAudioMultimedia_PresentationTools,
    pccAudioMultimedia_RippersConverters,
    pccAudioMultimedia_Speech,
    pccAudioMultimedia_VideoTools,

    // Business
    pccBusiness_AccountingFinance,
    pccBusiness_CalculatorsConverters,
    pccBusiness_DatabasesTools,
    pccBusiness_HelpdeskRemotePC,
    pccBusiness_InventoryBarcoding,
    pccBusiness_InvestmentTools,
    pccBusiness_MathScientificTools,
    pccBusiness_OfficeSuitesTools,
    pccBusiness_Other,
    pccBusiness_PIMSCalendars,
    pccBusiness_ProjectManagement,
    pccBusiness_VerticalMarketApps,

    // Communications
    pccCommunications_ChatInstantMessaging,
    pccCommunications_DialUpConnectionTools,
    pccCommunications_EmailClients,
    pccCommunications_EmailListManagement,
    pccCommunications_FaxTools,
    pccCommunications_NewsgroupClients,
    pccCommunications_OtherCommsTools,
    pccCommunications_OtherEmailTools,
    pccCommunications_PagerTools,
    pccCommunications_Telephony,
    pccCommunications_VideoCams,

    // Desktop
    pccDesktop_ClocksAlarms,
    pccDesktop_CursorsFonts,
    pccDesktop_Icons,
    pccDesktop_Other,
    pccDesktop_ScreenSaversArt,
    pccDesktop_ScreenSaversCartoons,
    pccDesktop_ScreenSaversNature,
    pccDesktop_ScreenSaversOther,
    pccDesktop_ScreenSaversPeople,
    pccDesktop_ScreenSaversScience,
    pccDesktop_ScreenSaversSeasonal,
    pccDesktop_ScreenSaversVehicles,
    pccDesktop_ThemesWallpaper,

    // Development
    pccDevelopment_ActiveX,
    pccDevelopment_BasicVBVBDotNet,
    pccDevelopment_C_CPlusPlus_CSharp,
    pccDevelopment_CompilersInterpreters,
    pccDevelopment_ComponentsLibraries,
    pccDevelopment_Debugging,
    pccDevelopment_Delphi,
    pccDevelopment_HelpTools,
    pccDevelopment_InstallSetup,
    pccDevelopment_ManagementDistribution,
    pccDevelopment_Other,
    pccDevelopment_SourceEditors,

    // Education
    pccEducation_Computer,
    pccEducation_Dictionaries,
    pccEducation_Geography,
    pccEducation_Kids,
    pccEducation_Languages,
    pccEducation_Mathematics,
    pccEducation_Other,
    pccEducation_ReferenceTools,
    pccEducation_Science,
    pccEducation_TeachingTrainingTools,

    // Games & Entertainment
    pccGamesEntertainment_Action,
    pccGamesEntertainment_AdventureRoleplay,
    pccGamesEntertainment_Arcade,
    pccGamesEntertainment_Board,
    pccGamesEntertainment_Card,
    pccGamesEntertainment_CasinoGambling,
    pccGamesEntertainment_Kids,
    pccGamesEntertainment_OnlineGaming,
    pccGamesEntertainment_Other,
    pccGamesEntertainment_PuzzleWordGames,
    pccGamesEntertainment_Simulation,
    pccGamesEntertainment_Sports,
    pccGamesEntertainment_StrategyWarGames,
    pccGamesEntertainment_ToolsEditors,

    // Graphic Apps
    pccGraphicApps_AnimationTools,
    pccGraphicApps_CAD,
    pccGraphicApps_ConvertersOptimizers,
    pccGraphicApps_Editors,
    pccGraphicApps_FontTools,
    pccGraphicApps_GalleryCatalogingTools,
    pccGraphicApps_IconTools,
    pccGraphicApps_Other,
    pccGraphicApps_ScreenCapture,
    pccGraphicApps_Viewers,

    // Home & Hobby
    pccHomeHobby_AstrologyBiorhythmsMystic,
    pccHomeHobby_Astronomy,
    pccHomeHobby_Cataloging,
    pccHomeHobby_FoodDrink,
    pccHomeHobby_Genealogy,
    pccHomeHobby_HealthNutrition,
    pccHomeHobby_Other,
    pccHomeHobby_PersonalFinance,
    pccHomeHobby_PersonalInterest,
    pccHomeHobby_Recreation,
    pccHomeHobby_Religion,

    // Network & Internet
    pccNetworkInternet_AdBlockers,
    pccNetworkInternet_BrowserTools,
    pccNetworkInternet_Browsers,
    pccNetworkInternet_DownloadManagers,
    pccNetworkInternet_FileSharingPeerToPeer,
    pccNetworkInternet_FTPClients,
    pccNetworkInternet_NetworkMonitoring,
    pccNetworkInternet_Other,
    pccNetworkInternet_RemoteComputing,
    pccNetworkInternet_SearchLookupTools,
    pccNetworkInternet_TerminalTelnetClients,
    pccNetworkInternet_TimersTimeSynch,
    pccNetworkInternet_TracePingTools,

    // Security & Privacy
    pccSecurityPrivacy_AccessControl,
    pccSecurityPrivacy_AntiSpamAntiSpyTools,
    pccSecurityPrivacy_AntiVirusTools,
    pccSecurityPrivacy_CovertSurveillance,
    pccSecurityPrivacy_EncryptionTools,
    pccSecurityPrivacy_Other,
    pccSecurityPrivacy_PasswordManagers,

    // Servers
    pccServers_FirewallProxyServers,
    pccServers_FTPServers,
    pccServers_MailServers,
    pccServers_NewsServers,
    pccServers_OtherServerApplications,
    pccServers_TelnetServers,
    pccServers_WebServers,

    // System Utilities
    pccSystemUtilities_AutomationTools,
    pccSystemUtilities_BackupRestore,
    pccSystemUtilities_Benchmarking,
    pccSystemUtilities_ClipboardTools,
    pccSystemUtilities_FileDiskManagement,
    pccSystemUtilities_FileCompression,
    pccSystemUtilities_LaunchersTaskManagers,
    pccSystemUtilities_Other,
    pccSystemUtilities_Printer,
    pccSystemUtilities_RegistryTools,
    pccSystemUtilities_ShellTools,
    pccSystemUtilities_SystemMaintenance,
    pccSystemUtilities_TextDocumentEditors,

    // Web Development
    pccWebDevelopment_ASPPHP,
    pccWebDevelopment_ECommerce,
    pccWebDevelopment_FlashTools,
    pccWebDevelopment_HTMLTools,
    pccWebDevelopment_JavaJavaScript,
    pccWebDevelopment_LogAnalysers,
    pccWebDevelopment_Other,
    pccWebDevelopment_SiteAdministration,
    pccWebDevelopment_WizardsComponents,
    pccWebDevelopment_XMLCSSTools
    );

  TPadLanguage = (
    plEnglish,
    plFrench,
    plGerman,
    plSpanish,
    plItalian,
    plDutch,
    plPortuguese,
    plSwedish,
    plDanish,
    plNorwegian,
    plFinnish,
    plRussian,
    plJapanese,
    plChinese,
    plKorean,
    plArabic,
    plHebrew,
    plGreek,
    plTurkish,
    plPolish,
    plCzech,
    plHungarian,
    plRomanian,
    plBulgarian
    );

  TPadLanguages = set of TPadLanguage;

  // OS support - this will be a set
  TPadOS = (
    posWindows95,
    posWindows98,
    posWindowsME,
    posWindowsNT,
    posWindows2000,
    posWindowsXP,
    posWindowsVista,
    posWindows7,
    posWindows8,
    posWindows10,
    posWindows11,
    posMacOS,
    posLinux,
    posUnix,
    posDOS,
    posOS2,
    posOther
    );

  TPadOSSupport = set of TPadOS;

const
  CategoryCount = Ord(High(TPadProgramCategoryClass)) - Ord(Low(TPadProgramCategoryClass)) + 1;

  PadProgramCategoryClassStrings: array[TPadProgramCategoryClass] of string = (
    '',
    // Audio & Multimedia
    'Audio & Multimedia::Audio Encoders/Decoders',
    'Audio & Multimedia::Audio File Players',
    'Audio & Multimedia::Audio File Recorders',
    'Audio & Multimedia::CD Burners',
    'Audio & Multimedia::CD Players',
    'Audio & Multimedia::Multimedia Creation Tools',
    'Audio & Multimedia::Music Composers',
    'Audio & Multimedia::Other',
    'Audio & Multimedia::Presentation Tools',
    'Audio & Multimedia::Rippers & Converters',
    'Audio & Multimedia::Speech',
    'Audio & Multimedia::Video Tools',

    // Business
    'Business::Accounting & Finance',
    'Business::Calculators & Converters',
    'Business::Databases & Tools',
    'Business::Helpdesk & Remote PC',
    'Business::Inventory & Barcoding',
    'Business::Investment Tools',
    'Business::Math & Scientific Tools',
    'Business::Office Suites & Tools',
    'Business::Other',
    'Business::PIMS & Calendars',
    'Business::Project Management',
    'Business::Vertical Market Apps',

    // Communications
    'Communications::Chat & Instant Messaging',
    'Communications::Dial Up & Connection Tools',
    'Communications::E-Mail Clients',
    'Communications::E-Mail List Management',
    'Communications::Fax Tools',
    'Communications::Newsgroup Clients',
    'Communications::Other Comms Tools',
    'Communications::Other E-Mail Tools',
    'Communications::Pager Tools',
    'Communications::Telephony',
    'Communications::Web/Video Cams',

    // Desktop
    'Desktop::Clocks & Alarms',
    'Desktop::Cursors & Fonts',
    'Desktop::Icons',
    'Desktop::Other',
    'Desktop::Screen Savers: Art',
    'Desktop::Screen Savers: Cartoons',
    'Desktop::Screen Savers: Nature',
    'Desktop::Screen Savers: Other',
    'Desktop::Screen Savers: People',
    'Desktop::Screen Savers: Science',
    'Desktop::Screen Savers: Seasonal',
    'Desktop::Screen Savers: Vehicles',
    'Desktop::Themes & Wallpaper',

    // Development
    'Development::Active X',
    'Development::Basic, VB, VB DotNet',
    'Development::C / C++ / C#',
    'Development::Compilers & Interpreters',
    'Development::Components & Libraries',
    'Development::Debugging',
    'Development::Delphi',
    'Development::Help Tools',
    'Development::Install & Setup',
    'Development::Management & Distribution',
    'Development::Other',
    'Development::Source Editors',

    // Education
    'Education::Computer',
    'Education::Dictionaries',
    'Education::Geography',
    'Education::Kids',
    'Education::Languages',
    'Education::Mathematics',
    'Education::Other',
    'Education::Reference Tools',
    'Education::Science',
    'Education::Teaching & Training Tools',

    // Games & Entertainment
    'Games & Entertainment::Action',
    'Games & Entertainment::Adventure & Roleplay',
    'Games & Entertainment::Arcade',
    'Games & Entertainment::Board',
    'Games & Entertainment::Card',
    'Games & Entertainment::Casino & Gambling',
    'Games & Entertainment::Kids',
    'Games & Entertainment::Online Gaming',
    'Games & Entertainment::Other',
    'Games & Entertainment::Puzzle & Word Games',
    'Games & Entertainment::Simulation',
    'Games & Entertainment::Sports',
    'Games & Entertainment::Strategy & War Games',
    'Games & Entertainment::Tools & Editors',

    // Graphic Apps
    'Graphic Apps::Animation Tools',
    'Graphic Apps::CAD',
    'Graphic Apps::Converters & Optimizers',
    'Graphic Apps::Editors',
    'Graphic Apps::Font Tools',
    'Graphic Apps::Gallery & Cataloging Tools',
    'Graphic Apps::Icon Tools',
    'Graphic Apps::Other',
    'Graphic Apps::Screen Capture',
    'Graphic Apps::Viewers',

    // Home & Hobby
    'Home & Hobby::Astrology/Biorhythms/Mystic',
    'Home & Hobby::Astronomy',
    'Home & Hobby::Cataloging',
    'Home & Hobby::Food & Drink',
    'Home & Hobby::Genealogy',
    'Home & Hobby::Health & Nutrition',
    'Home & Hobby::Other',
    'Home & Hobby::Personal Finance',
    'Home & Hobby::Personal Interest',
    'Home & Hobby::Recreation',
    'Home & Hobby::Religion',

    // Network & Internet
    'Network & Internet::Ad Blockers',
    'Network & Internet::Browser Tools',
    'Network & Internet::Browsers',
    'Network & Internet::Download Managers',
    'Network & Internet::File Sharing/Peer to Peer',
    'Network & Internet::FTP Clients',
    'Network & Internet::Network Monitoring',
    'Network & Internet::Other',
    'Network & Internet::Remote Computing',
    'Network & Internet::Search/Lookup Tools',
    'Network & Internet::Terminal & Telnet Clients',
    'Network & Internet::Timers & Time Synch',
    'Network & Internet::Trace & Ping Tools',

    // Security & Privacy
    'Security & Privacy::Access Control',
    'Security & Privacy::Anti-Spam & Anti-Spy Tools',
    'Security & Privacy::Anti-Virus Tools',
    'Security & Privacy::Covert Surveillance',
    'Security & Privacy::Encryption Tools',
    'Security & Privacy::Other',
    'Security & Privacy::Password Managers',

    // Servers
    'Servers::Firewall & Proxy Servers',
    'Servers::FTP Servers',
    'Servers::Mail Servers',
    'Servers::News Servers',
    'Servers::Other Server Applications',
    'Servers::Telnet Servers',
    'Servers::Web Servers',

    // System Utilities
    'System Utilities::Automation Tools',
    'System Utilities::Backup & Restore',
    'System Utilities::Benchmarking',
    'System Utilities::Clipboard Tools',
    'System Utilities::File & Disk Management',
    'System Utilities::File Compression',
    'System Utilities::Launchers & Task Managers',
    'System Utilities::Other',
    'System Utilities::Printer',
    'System Utilities::Registry Tools',
    'System Utilities::Shell Tools',
    'System Utilities::System Maintenance',
    'System Utilities::Text/Document Editors',

    // Web Development
    'Web Development::ASP & PHP',
    'Web Development::E-Commerce',
    'Web Development::Flash Tools',
    'Web Development::HTML Tools',
    'Web Development::Java & JavaScript',
    'Web Development::Log Analysers',
    'Web Development::Other',
    'Web Development::Site Administration',
    'Web Development::Wizards & Components',
    'Web Development::XML/CSS Tools'
    );

implementation

end.
