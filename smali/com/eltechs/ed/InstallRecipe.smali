.class public Lcom/eltechs/ed/InstallRecipe;
.super Ljava/lang/Object;
.source "InstallRecipe.java"


# static fields
.field public static final LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/eltechs/ed/InstallRecipe;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mControls:Lcom/eltechs/ed/controls/Controls;

.field public mDownloadURL:Ljava/lang/String;

.field public mInstallScriptName:Ljava/lang/String;

.field public mLocaleName:Ljava/lang/String;

.field public final mName:Ljava/lang/String;

.field public mRunArguments:Ljava/lang/String;

.field public mRunGuide:Ljava/lang/String;

.field public mRunScriptName:Ljava/lang/String;

.field public mScreenInfo:Lcom/eltechs/axs/xserver/ScreenInfo;

.field public mStartupActions:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x1b

    .line 123
    new-array v0, v0, [Lcom/eltechs/ed/InstallRecipe;

    new-instance v1, Lcom/eltechs/ed/InstallRecipe;

    const-string v2, "Age of Wonders"

    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/eltechs/axs/xserver/ScreenInfo;

    const/16 v3, 0x20

    const/16 v4, 0x1e0

    const/16 v5, 0x280

    invoke-direct {v2, v5, v4, v3}, Lcom/eltechs/axs/xserver/ScreenInfo;-><init>(III)V

    .line 125
    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;->setScreenInfo(Lcom/eltechs/axs/xserver/ScreenInfo;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    new-instance v2, Lcom/eltechs/ed/controls/HoMM3Controls;

    invoke-direct {v2}, Lcom/eltechs/ed/controls/HoMM3Controls;-><init>()V

    .line 126
    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;->setControls(Lcom/eltechs/ed/controls/Controls;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const-string v2, "https://www.gog.com/game/age_of_wonders"

    .line 127
    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;->setDownloadURL(Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/InstallRecipe;

    const-string v6, "Arcanum: Of Steamworks and Magick Obscura"

    invoke-direct {v1, v6}, Lcom/eltechs/ed/InstallRecipe;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/eltechs/axs/xserver/ScreenInfo;

    const/16 v7, 0x258

    const/16 v8, 0x320

    const/16 v9, 0x10

    invoke-direct {v6, v8, v7, v9}, Lcom/eltechs/axs/xserver/ScreenInfo;-><init>(III)V

    .line 130
    invoke-direct {v1, v6}, Lcom/eltechs/ed/InstallRecipe;->setScreenInfo(Lcom/eltechs/axs/xserver/ScreenInfo;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    new-instance v6, Lcom/eltechs/ed/controls/ArcanumControls;

    invoke-direct {v6}, Lcom/eltechs/ed/controls/ArcanumControls;-><init>()V

    .line 131
    invoke-direct {v1, v6}, Lcom/eltechs/ed/InstallRecipe;->setControls(Lcom/eltechs/ed/controls/Controls;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const-string v6, "-no3d -doublebuffer"

    .line 132
    invoke-direct {v1, v6}, Lcom/eltechs/ed/InstallRecipe;->setRunArguments(Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const-string v6, "https://www.gog.com/game/arcanum_of_steamworks_and_magick_obscura"

    .line 133
    invoke-direct {v1, v6}, Lcom/eltechs/ed/InstallRecipe;->setDownloadURL(Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const/4 v6, 0x1

    aput-object v1, v0, v6

    new-instance v1, Lcom/eltechs/ed/InstallRecipe;

    const-string v10, "Caesar III"

    invoke-direct {v1, v10}, Lcom/eltechs/ed/InstallRecipe;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/eltechs/axs/xserver/ScreenInfo;

    invoke-direct {v10, v8, v7, v9}, Lcom/eltechs/axs/xserver/ScreenInfo;-><init>(III)V

    .line 136
    invoke-direct {v1, v10}, Lcom/eltechs/ed/InstallRecipe;->setScreenInfo(Lcom/eltechs/axs/xserver/ScreenInfo;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    new-instance v10, Lcom/eltechs/ed/controls/HoMM3Controls;

    invoke-direct {v10}, Lcom/eltechs/ed/controls/HoMM3Controls;-><init>()V

    .line 137
    invoke-direct {v1, v10}, Lcom/eltechs/ed/InstallRecipe;->setControls(Lcom/eltechs/ed/controls/Controls;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const-string v10, "https://www.gog.com/game/caesar_3"

    .line 138
    invoke-direct {v1, v10}, Lcom/eltechs/ed/InstallRecipe;->setDownloadURL(Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const/4 v10, 0x2

    aput-object v1, v0, v10

    new-instance v1, Lcom/eltechs/ed/InstallRecipe;

    const-string v10, "Diablo 2"

    invoke-direct {v1, v10}, Lcom/eltechs/ed/InstallRecipe;-><init>(Ljava/lang/String;)V

    const-string v10, "run/diablo2.sh"

    .line 141
    invoke-direct {v1, v10}, Lcom/eltechs/ed/InstallRecipe;->setRunScript(Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    new-instance v10, Lcom/eltechs/axs/xserver/ScreenInfo;

    invoke-direct {v10, v8, v7, v9}, Lcom/eltechs/axs/xserver/ScreenInfo;-><init>(III)V

    .line 142
    invoke-direct {v1, v10}, Lcom/eltechs/ed/InstallRecipe;->setScreenInfo(Lcom/eltechs/axs/xserver/ScreenInfo;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    new-instance v10, Lcom/eltechs/ed/controls/HoMM3Controls;

    invoke-direct {v10}, Lcom/eltechs/ed/controls/HoMM3Controls;-><init>()V

    .line 143
    invoke-direct {v1, v10}, Lcom/eltechs/ed/InstallRecipe;->setControls(Lcom/eltechs/ed/controls/Controls;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const-string v10, "-w"

    .line 144
    invoke-direct {v1, v10}, Lcom/eltechs/ed/InstallRecipe;->setRunArguments(Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const/4 v10, 0x3

    aput-object v1, v0, v10

    new-instance v1, Lcom/eltechs/ed/InstallRecipe;

    const-string v10, "Disciples 2"

    invoke-direct {v1, v10}, Lcom/eltechs/ed/InstallRecipe;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/eltechs/axs/xserver/ScreenInfo;

    invoke-direct {v10, v8, v7, v9}, Lcom/eltechs/axs/xserver/ScreenInfo;-><init>(III)V

    .line 147
    invoke-direct {v1, v10}, Lcom/eltechs/ed/InstallRecipe;->setScreenInfo(Lcom/eltechs/axs/xserver/ScreenInfo;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    new-instance v10, Lcom/eltechs/ed/controls/Disciples2Controls;

    invoke-direct {v10}, Lcom/eltechs/ed/controls/Disciples2Controls;-><init>()V

    .line 148
    invoke-direct {v1, v10}, Lcom/eltechs/ed/InstallRecipe;->setControls(Lcom/eltechs/ed/controls/Controls;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const-string v10, "https://www.gog.com/game/disciples_2_gold"

    .line 149
    invoke-direct {v1, v10}, Lcom/eltechs/ed/InstallRecipe;->setDownloadURL(Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const/4 v10, 0x4

    aput-object v1, v0, v10

    new-instance v1, Lcom/eltechs/ed/InstallRecipe;

    const-string v10, "Divine Divinity"

    invoke-direct {v1, v10}, Lcom/eltechs/ed/InstallRecipe;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/eltechs/axs/xserver/ScreenInfo;

    invoke-direct {v10, v8, v7, v9}, Lcom/eltechs/axs/xserver/ScreenInfo;-><init>(III)V

    .line 152
    invoke-direct {v1, v10}, Lcom/eltechs/ed/InstallRecipe;->setScreenInfo(Lcom/eltechs/axs/xserver/ScreenInfo;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    new-instance v10, Lcom/eltechs/ed/controls/ArcanumControls;

    invoke-direct {v10}, Lcom/eltechs/ed/controls/ArcanumControls;-><init>()V

    .line 153
    invoke-direct {v1, v10}, Lcom/eltechs/ed/InstallRecipe;->setControls(Lcom/eltechs/ed/controls/Controls;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const-string v10, "https://www.gog.com/game/divine_divinity"

    .line 154
    invoke-direct {v1, v10}, Lcom/eltechs/ed/InstallRecipe;->setDownloadURL(Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    new-array v10, v6, [Ljava/lang/String;

    sget-object v11, Lcom/eltechs/ed/startupActions/ContainerStartupAction;->ID_DIVINE_DIVINITY_SETTINGS:Ljava/lang/String;

    aput-object v11, v10, v2

    .line 155
    invoke-direct {v1, v10}, Lcom/eltechs/ed/InstallRecipe;->setStartupActions([Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    sget-object v10, Lcom/eltechs/ed/AppRunGuide;->ID_DIVINE_DIVINITY:Ljava/lang/String;

    .line 156
    invoke-direct {v1, v10}, Lcom/eltechs/ed/InstallRecipe;->setRunGuide(Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const/4 v10, 0x5

    aput-object v1, v0, v10

    new-instance v1, Lcom/eltechs/ed/InstallRecipe;

    const-string v10, "Fallout"

    invoke-direct {v1, v10}, Lcom/eltechs/ed/InstallRecipe;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/eltechs/axs/xserver/ScreenInfo;

    invoke-direct {v10, v5, v4, v3}, Lcom/eltechs/axs/xserver/ScreenInfo;-><init>(III)V

    .line 159
    invoke-direct {v1, v10}, Lcom/eltechs/ed/InstallRecipe;->setScreenInfo(Lcom/eltechs/axs/xserver/ScreenInfo;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    new-instance v10, Lcom/eltechs/ed/controls/FalloutControls;

    invoke-direct {v10}, Lcom/eltechs/ed/controls/FalloutControls;-><init>()V

    .line 160
    invoke-direct {v1, v10}, Lcom/eltechs/ed/InstallRecipe;->setControls(Lcom/eltechs/ed/controls/Controls;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const-string v10, "https://www.gog.com/game/fallout"

    .line 161
    invoke-direct {v1, v10}, Lcom/eltechs/ed/InstallRecipe;->setDownloadURL(Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    sget-object v10, Lcom/eltechs/ed/AppRunGuide;->ID_FALLOUT:Ljava/lang/String;

    .line 162
    invoke-direct {v1, v10}, Lcom/eltechs/ed/InstallRecipe;->setRunGuide(Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const/4 v10, 0x6

    aput-object v1, v0, v10

    new-instance v1, Lcom/eltechs/ed/InstallRecipe;

    const-string v10, "Fallout 2"

    invoke-direct {v1, v10}, Lcom/eltechs/ed/InstallRecipe;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/eltechs/axs/xserver/ScreenInfo;

    invoke-direct {v10, v5, v4, v3}, Lcom/eltechs/axs/xserver/ScreenInfo;-><init>(III)V

    .line 165
    invoke-direct {v1, v10}, Lcom/eltechs/ed/InstallRecipe;->setScreenInfo(Lcom/eltechs/axs/xserver/ScreenInfo;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    new-instance v3, Lcom/eltechs/ed/controls/FalloutControls;

    invoke-direct {v3}, Lcom/eltechs/ed/controls/FalloutControls;-><init>()V

    .line 166
    invoke-direct {v1, v3}, Lcom/eltechs/ed/InstallRecipe;->setControls(Lcom/eltechs/ed/controls/Controls;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const-string v3, "https://www.gog.com/game/fallout_2"

    .line 167
    invoke-direct {v1, v3}, Lcom/eltechs/ed/InstallRecipe;->setDownloadURL(Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    sget-object v3, Lcom/eltechs/ed/AppRunGuide;->ID_FALLOUT2:Ljava/lang/String;

    .line 168
    invoke-direct {v1, v3}, Lcom/eltechs/ed/InstallRecipe;->setRunGuide(Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v0, v3

    new-instance v1, Lcom/eltechs/ed/InstallRecipe;

    const-string v3, "Heroes of Might and Magic 3"

    invoke-direct {v1, v3}, Lcom/eltechs/ed/InstallRecipe;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/eltechs/axs/xserver/ScreenInfo;

    invoke-direct {v3, v8, v7, v9}, Lcom/eltechs/axs/xserver/ScreenInfo;-><init>(III)V

    .line 171
    invoke-direct {v1, v3}, Lcom/eltechs/ed/InstallRecipe;->setScreenInfo(Lcom/eltechs/axs/xserver/ScreenInfo;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    new-instance v3, Lcom/eltechs/ed/controls/HoMM3Controls;

    invoke-direct {v3}, Lcom/eltechs/ed/controls/HoMM3Controls;-><init>()V

    .line 172
    invoke-direct {v1, v3}, Lcom/eltechs/ed/InstallRecipe;->setControls(Lcom/eltechs/ed/controls/Controls;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const-string v3, "https://www.gog.com/game/heroes_of_might_and_magic_3_complete_edition"

    .line 173
    invoke-direct {v1, v3}, Lcom/eltechs/ed/InstallRecipe;->setDownloadURL(Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v0, v3

    new-instance v1, Lcom/eltechs/ed/InstallRecipe;

    const-string v3, "Heroes of Might and Magic 4"

    invoke-direct {v1, v3}, Lcom/eltechs/ed/InstallRecipe;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/eltechs/axs/xserver/ScreenInfo;

    invoke-direct {v3, v8, v7, v9}, Lcom/eltechs/axs/xserver/ScreenInfo;-><init>(III)V

    .line 176
    invoke-direct {v1, v3}, Lcom/eltechs/ed/InstallRecipe;->setScreenInfo(Lcom/eltechs/axs/xserver/ScreenInfo;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    new-instance v3, Lcom/eltechs/ed/controls/HoMM3Controls;

    invoke-direct {v3}, Lcom/eltechs/ed/controls/HoMM3Controls;-><init>()V

    .line 177
    invoke-direct {v1, v3}, Lcom/eltechs/ed/InstallRecipe;->setControls(Lcom/eltechs/ed/controls/Controls;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const-string v3, "https://www.gog.com/game/heroes_of_might_and_magic_4_complete"

    .line 178
    invoke-direct {v1, v3}, Lcom/eltechs/ed/InstallRecipe;->setDownloadURL(Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const/16 v3, 0x9

    aput-object v1, v0, v3

    new-instance v1, Lcom/eltechs/ed/InstallRecipe;

    const-string v3, "Heroes Chronicles"

    invoke-direct {v1, v3}, Lcom/eltechs/ed/InstallRecipe;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/eltechs/axs/xserver/ScreenInfo;

    invoke-direct {v3, v8, v7, v9}, Lcom/eltechs/axs/xserver/ScreenInfo;-><init>(III)V

    .line 181
    invoke-direct {v1, v3}, Lcom/eltechs/ed/InstallRecipe;->setScreenInfo(Lcom/eltechs/axs/xserver/ScreenInfo;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    new-instance v3, Lcom/eltechs/ed/controls/HoMM3Controls;

    invoke-direct {v3}, Lcom/eltechs/ed/controls/HoMM3Controls;-><init>()V

    .line 182
    invoke-direct {v1, v3}, Lcom/eltechs/ed/InstallRecipe;->setControls(Lcom/eltechs/ed/controls/Controls;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const-string v3, "https://www.gog.com/game/heroes_chronicles_all_chapters"

    .line 183
    invoke-direct {v1, v3}, Lcom/eltechs/ed/InstallRecipe;->setDownloadURL(Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const/16 v3, 0xa

    aput-object v1, v0, v3

    new-instance v1, Lcom/eltechs/ed/InstallRecipe;

    const-string v3, "Jagged Alliance 2"

    invoke-direct {v1, v3}, Lcom/eltechs/ed/InstallRecipe;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/eltechs/axs/xserver/ScreenInfo;

    invoke-direct {v3, v5, v4, v9}, Lcom/eltechs/axs/xserver/ScreenInfo;-><init>(III)V

    .line 186
    invoke-direct {v1, v3}, Lcom/eltechs/ed/InstallRecipe;->setScreenInfo(Lcom/eltechs/axs/xserver/ScreenInfo;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    new-instance v3, Lcom/eltechs/ed/controls/JA2Controls;

    invoke-direct {v3}, Lcom/eltechs/ed/controls/JA2Controls;-><init>()V

    .line 187
    invoke-direct {v1, v3}, Lcom/eltechs/ed/InstallRecipe;->setControls(Lcom/eltechs/ed/controls/Controls;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const-string v3, "WINELOADERNOEXEC=1"

    .line 188
    invoke-direct {v1, v3}, Lcom/eltechs/ed/InstallRecipe;->setRunArguments(Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const-string v3, "https://www.gog.com/game/heroes_of_might_and_magic_2_gold_edition"

    .line 189
    invoke-direct {v1, v3}, Lcom/eltechs/ed/InstallRecipe;->setDownloadURL(Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const/16 v3, 0xb

    aput-object v1, v0, v3

    new-instance v1, Lcom/eltechs/ed/InstallRecipe;

    const-string v3, "Microsoft Word Viewer 2003"

    invoke-direct {v1, v3}, Lcom/eltechs/ed/InstallRecipe;-><init>(Ljava/lang/String;)V

    const/16 v3, 0xc

    aput-object v1, v0, v3

    new-instance v1, Lcom/eltechs/ed/InstallRecipe;

    const-string v3, "Microsoft Office 2010"

    invoke-direct {v1, v3}, Lcom/eltechs/ed/InstallRecipe;-><init>(Ljava/lang/String;)V

    const-string v3, "office2010.sh"

    .line 194
    invoke-direct {v1, v3}, Lcom/eltechs/ed/InstallRecipe;->setInstallScript(Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const/16 v3, 0xd

    aput-object v1, v0, v3

    new-instance v1, Lcom/eltechs/ed/InstallRecipe;

    const-string v3, "Might and Magic 6"

    invoke-direct {v1, v3}, Lcom/eltechs/ed/InstallRecipe;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/eltechs/axs/xserver/ScreenInfo;

    invoke-direct {v3, v5, v4, v9}, Lcom/eltechs/axs/xserver/ScreenInfo;-><init>(III)V

    .line 197
    invoke-direct {v1, v3}, Lcom/eltechs/ed/InstallRecipe;->setScreenInfo(Lcom/eltechs/axs/xserver/ScreenInfo;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    new-instance v3, Lcom/eltechs/ed/controls/MMControls;

    invoke-direct {v3}, Lcom/eltechs/ed/controls/MMControls;-><init>()V

    .line 198
    invoke-direct {v1, v3}, Lcom/eltechs/ed/InstallRecipe;->setControls(Lcom/eltechs/ed/controls/Controls;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const-string v3, "https://www.gog.com/game/might_and_magic_6_limited_edition"

    .line 199
    invoke-direct {v1, v3}, Lcom/eltechs/ed/InstallRecipe;->setDownloadURL(Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const/16 v3, 0xe

    aput-object v1, v0, v3

    new-instance v1, Lcom/eltechs/ed/InstallRecipe;

    const-string v3, "Might and Magic 7"

    invoke-direct {v1, v3}, Lcom/eltechs/ed/InstallRecipe;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/eltechs/axs/xserver/ScreenInfo;

    invoke-direct {v3, v5, v4, v9}, Lcom/eltechs/axs/xserver/ScreenInfo;-><init>(III)V

    .line 202
    invoke-direct {v1, v3}, Lcom/eltechs/ed/InstallRecipe;->setScreenInfo(Lcom/eltechs/axs/xserver/ScreenInfo;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    new-instance v3, Lcom/eltechs/ed/controls/MMControls;

    invoke-direct {v3}, Lcom/eltechs/ed/controls/MMControls;-><init>()V

    .line 203
    invoke-direct {v1, v3}, Lcom/eltechs/ed/InstallRecipe;->setControls(Lcom/eltechs/ed/controls/Controls;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const-string v3, "https://www.gog.com/game/might_and_magic_7_for_blood_and_honor"

    .line 204
    invoke-direct {v1, v3}, Lcom/eltechs/ed/InstallRecipe;->setDownloadURL(Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/String;

    sget-object v10, Lcom/eltechs/ed/startupActions/ContainerStartupAction;->ID_MM7_SETTINGS:Ljava/lang/String;

    aput-object v10, v3, v2

    .line 205
    invoke-direct {v1, v3}, Lcom/eltechs/ed/InstallRecipe;->setStartupActions([Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const/16 v3, 0xf

    aput-object v1, v0, v3

    new-instance v1, Lcom/eltechs/ed/InstallRecipe;

    const-string v10, "Might and Magic 8"

    invoke-direct {v1, v10}, Lcom/eltechs/ed/InstallRecipe;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/eltechs/axs/xserver/ScreenInfo;

    invoke-direct {v10, v5, v4, v9}, Lcom/eltechs/axs/xserver/ScreenInfo;-><init>(III)V

    .line 208
    invoke-direct {v1, v10}, Lcom/eltechs/ed/InstallRecipe;->setScreenInfo(Lcom/eltechs/axs/xserver/ScreenInfo;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    new-instance v10, Lcom/eltechs/ed/controls/MMControls;

    invoke-direct {v10}, Lcom/eltechs/ed/controls/MMControls;-><init>()V

    .line 209
    invoke-direct {v1, v10}, Lcom/eltechs/ed/InstallRecipe;->setControls(Lcom/eltechs/ed/controls/Controls;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const-string v10, "https://www.gog.com/game/might_and_magic_8_day_of_the_destroyer"

    .line 210
    invoke-direct {v1, v10}, Lcom/eltechs/ed/InstallRecipe;->setDownloadURL(Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    new-array v6, v6, [Ljava/lang/String;

    sget-object v10, Lcom/eltechs/ed/startupActions/ContainerStartupAction;->ID_MM8_SETTINGS:Ljava/lang/String;

    aput-object v10, v6, v2

    .line 211
    invoke-direct {v1, v6}, Lcom/eltechs/ed/InstallRecipe;->setStartupActions([Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    aput-object v1, v0, v9

    new-instance v1, Lcom/eltechs/ed/InstallRecipe;

    const-string v2, "Neighbours From Hell"

    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/eltechs/axs/xserver/ScreenInfo;

    invoke-direct {v2, v8, v7, v9}, Lcom/eltechs/axs/xserver/ScreenInfo;-><init>(III)V

    .line 214
    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;->setScreenInfo(Lcom/eltechs/axs/xserver/ScreenInfo;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    new-instance v2, Lcom/eltechs/ed/controls/Disciples2Controls;

    invoke-direct {v2}, Lcom/eltechs/ed/controls/Disciples2Controls;-><init>()V

    .line 215
    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;->setControls(Lcom/eltechs/ed/controls/Controls;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const-string v2, "https://www.gog.com/game/neighbours_from_hell_compilation"

    .line 216
    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;->setDownloadURL(Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/InstallRecipe;

    const-string v2, "Panzer General 2"

    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/eltechs/axs/xserver/ScreenInfo;

    invoke-direct {v2, v5, v4, v9}, Lcom/eltechs/axs/xserver/ScreenInfo;-><init>(III)V

    .line 219
    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;->setScreenInfo(Lcom/eltechs/axs/xserver/ScreenInfo;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    new-instance v2, Lcom/eltechs/ed/controls/Panzer2Controls;

    invoke-direct {v2}, Lcom/eltechs/ed/controls/Panzer2Controls;-><init>()V

    .line 220
    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;->setControls(Lcom/eltechs/ed/controls/Controls;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const-string v2, "https://www.gog.com/game/panzer_general_2"

    .line 221
    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;->setDownloadURL(Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/InstallRecipe;

    const-string v2, "Pharaoh and Cleopatra"

    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/eltechs/axs/xserver/ScreenInfo;

    invoke-direct {v2, v8, v7, v9}, Lcom/eltechs/axs/xserver/ScreenInfo;-><init>(III)V

    .line 224
    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;->setScreenInfo(Lcom/eltechs/axs/xserver/ScreenInfo;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    new-instance v2, Lcom/eltechs/ed/controls/HoMM3Controls;

    invoke-direct {v2}, Lcom/eltechs/ed/controls/HoMM3Controls;-><init>()V

    .line 225
    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;->setControls(Lcom/eltechs/ed/controls/Controls;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const-string v2, "https://www.gog.com/game/pharaoh_cleopatra"

    .line 226
    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;->setDownloadURL(Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/InstallRecipe;

    const-string v2, "Sid Meier\'s Alpha Centauri"

    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/eltechs/axs/xserver/ScreenInfo;

    invoke-direct {v2, v8, v7, v9}, Lcom/eltechs/axs/xserver/ScreenInfo;-><init>(III)V

    .line 229
    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;->setScreenInfo(Lcom/eltechs/axs/xserver/ScreenInfo;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    new-instance v2, Lcom/eltechs/ed/controls/HoMM3Controls;

    invoke-direct {v2}, Lcom/eltechs/ed/controls/HoMM3Controls;-><init>()V

    .line 230
    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;->setControls(Lcom/eltechs/ed/controls/Controls;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const-string v2, "https://www.gog.com/game/sid_meiers_alpha_centauri"

    .line 231
    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;->setDownloadURL(Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/InstallRecipe;

    const-string v2, "Sid Meier\'s Civilization III"

    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/eltechs/axs/xserver/ScreenInfo;

    const/16 v6, 0x400

    const/16 v10, 0x300

    invoke-direct {v2, v6, v10, v3}, Lcom/eltechs/axs/xserver/ScreenInfo;-><init>(III)V

    .line 234
    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;->setScreenInfo(Lcom/eltechs/axs/xserver/ScreenInfo;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    new-instance v2, Lcom/eltechs/ed/controls/Civ3Controls;

    invoke-direct {v2}, Lcom/eltechs/ed/controls/Civ3Controls;-><init>()V

    .line 235
    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;->setControls(Lcom/eltechs/ed/controls/Controls;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const-string v2, "https://www.gog.com/game/sid_meiers_civilization_iii_complete"

    .line 236
    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;->setDownloadURL(Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    sget-object v2, Lcom/eltechs/ed/AppRunGuide;->ID_CIV3:Ljava/lang/String;

    .line 237
    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;->setRunGuide(Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/InstallRecipe;

    const-string v2, "StarCraft"

    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/eltechs/axs/xserver/ScreenInfo;

    invoke-direct {v2, v5, v4, v9}, Lcom/eltechs/axs/xserver/ScreenInfo;-><init>(III)V

    .line 240
    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;->setScreenInfo(Lcom/eltechs/axs/xserver/ScreenInfo;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    new-instance v2, Lcom/eltechs/ed/controls/RtsControls;

    invoke-direct {v2}, Lcom/eltechs/ed/controls/RtsControls;-><init>()V

    .line 241
    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;->setControls(Lcom/eltechs/ed/controls/Controls;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/InstallRecipe;

    const-string v2, "Stronghold Crusader"

    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/eltechs/axs/xserver/ScreenInfo;

    invoke-direct {v2, v8, v7, v9}, Lcom/eltechs/axs/xserver/ScreenInfo;-><init>(III)V

    .line 244
    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;->setScreenInfo(Lcom/eltechs/axs/xserver/ScreenInfo;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    new-instance v2, Lcom/eltechs/ed/controls/RtsControls;

    invoke-direct {v2}, Lcom/eltechs/ed/controls/RtsControls;-><init>()V

    .line 245
    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;->setControls(Lcom/eltechs/ed/controls/Controls;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const-string v2, "https://www.gog.com/game/stronghold_crusader"

    .line 246
    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;->setDownloadURL(Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/InstallRecipe;

    const-string v2, "Total Annihilation"

    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/eltechs/axs/xserver/ScreenInfo;

    invoke-direct {v2, v5, v4, v9}, Lcom/eltechs/axs/xserver/ScreenInfo;-><init>(III)V

    .line 249
    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;->setScreenInfo(Lcom/eltechs/axs/xserver/ScreenInfo;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    new-instance v2, Lcom/eltechs/ed/controls/RtsControls;

    invoke-direct {v2}, Lcom/eltechs/ed/controls/RtsControls;-><init>()V

    .line 250
    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;->setControls(Lcom/eltechs/ed/controls/Controls;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const-string v2, "https://www.gog.com/game/total_anihilation_commander_pack"

    .line 251
    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;->setDownloadURL(Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/InstallRecipe;

    const-string v2, "Zeus + Poseidon (Acropolis)"

    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/eltechs/axs/xserver/ScreenInfo;

    invoke-direct {v2, v8, v7, v9}, Lcom/eltechs/axs/xserver/ScreenInfo;-><init>(III)V

    .line 254
    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;->setScreenInfo(Lcom/eltechs/axs/xserver/ScreenInfo;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    new-instance v2, Lcom/eltechs/ed/controls/HoMM3Controls;

    invoke-direct {v2}, Lcom/eltechs/ed/controls/HoMM3Controls;-><init>()V

    .line 255
    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;->setControls(Lcom/eltechs/ed/controls/Controls;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const-string v2, "https://www.gog.com/game/zeus_poseidon"

    .line 256
    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;->setDownloadURL(Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Lcom/eltechs/ed/InstallRecipe;

    const-string v2, "Other app (not from the list)"

    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/eltechs/axs/xserver/ScreenInfo;

    invoke-direct {v2, v8, v7, v9}, Lcom/eltechs/axs/xserver/ScreenInfo;-><init>(III)V

    .line 254
    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;->setScreenInfo(Lcom/eltechs/axs/xserver/ScreenInfo;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    new-instance v2, Lcom/eltechs/ed/controls/Civ3Controls;

    invoke-direct {v2}, Lcom/eltechs/ed/controls/Civ3Controls;-><init>()V

    .line 255
    invoke-direct {v1, v2}, Lcom/eltechs/ed/InstallRecipe;->setControls(Lcom/eltechs/ed/controls/Controls;)Lcom/eltechs/ed/InstallRecipe;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 123
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/eltechs/ed/InstallRecipe;->LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/eltechs/ed/InstallRecipe;->mName:Ljava/lang/String;

    const-string p1, "simple.sh"

    .line 40
    iput-object p1, p0, Lcom/eltechs/ed/InstallRecipe;->mInstallScriptName:Ljava/lang/String;

    const-string p1, "run/simple.sh"

    .line 41
    iput-object p1, p0, Lcom/eltechs/ed/InstallRecipe;->mRunScriptName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 42
    iput-object p1, p0, Lcom/eltechs/ed/InstallRecipe;->mScreenInfo:Lcom/eltechs/axs/xserver/ScreenInfo;

    .line 43
    iput-object p1, p0, Lcom/eltechs/ed/InstallRecipe;->mControls:Lcom/eltechs/ed/controls/Controls;

    .line 44
    iput-object p1, p0, Lcom/eltechs/ed/InstallRecipe;->mLocaleName:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/eltechs/ed/InstallRecipe;->mRunArguments:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/eltechs/ed/InstallRecipe;->mDownloadURL:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/eltechs/ed/InstallRecipe;->mStartupActions:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/eltechs/ed/InstallRecipe;->mRunGuide:Ljava/lang/String;

    return-void
.end method

.method private setControls(Lcom/eltechs/ed/controls/Controls;)Lcom/eltechs/ed/InstallRecipe;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/eltechs/ed/InstallRecipe;->mControls:Lcom/eltechs/ed/controls/Controls;

    return-object p0
.end method

.method private setDownloadURL(Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/eltechs/ed/InstallRecipe;->mDownloadURL:Ljava/lang/String;

    return-object p0
.end method

.method private setInstallScript(Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/eltechs/ed/InstallRecipe;->mInstallScriptName:Ljava/lang/String;

    return-object p0
.end method

.method private setLocaleName(Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/eltechs/ed/InstallRecipe;->mLocaleName:Ljava/lang/String;

    return-object p0
.end method

.method private setRunArguments(Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/eltechs/ed/InstallRecipe;->mRunArguments:Ljava/lang/String;

    return-object p0
.end method

.method private setRunGuide(Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/eltechs/ed/InstallRecipe;->mRunGuide:Ljava/lang/String;

    return-object p0
.end method

.method private setRunScript(Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/eltechs/ed/InstallRecipe;->mRunScriptName:Ljava/lang/String;

    return-object p0
.end method

.method private setScreenInfo(Lcom/eltechs/axs/xserver/ScreenInfo;)Lcom/eltechs/ed/InstallRecipe;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/eltechs/ed/InstallRecipe;->mScreenInfo:Lcom/eltechs/axs/xserver/ScreenInfo;

    return-object p0
.end method

.method private varargs setStartupActions([Ljava/lang/String;)Lcom/eltechs/ed/InstallRecipe;
    .locals 1

    const-string v0, " "

    .line 96
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/ed/InstallRecipe;->mStartupActions:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getDownloadURL()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/eltechs/ed/InstallRecipe;->mDownloadURL:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/eltechs/ed/InstallRecipe;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/eltechs/ed/InstallRecipe;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
