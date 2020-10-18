.class public Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;
.super Lcom/eltechs/axs/configuration/startup/actions/SimpleInteractiveStartupActionBase;
.source "CheckLicense.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<StateClass:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/eltechs/axs/configuration/startup/actions/SimpleInteractiveStartupActionBase<",
        "TStateClass;>;"
    }
.end annotation


# static fields
.field private static final SALT:[B


# instance fields
.field private final base64AppPublicKey:Ljava/lang/String;

.field private licenseChecker:Lcom/eltechs/axs/helpers/licensing/LicenseChecker;

.field private licenseCheckerCallback:Lcom/eltechs/axs/helpers/licensing/LicenseCheckerCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    .line 24
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;->SALT:[B

    return-void

    :array_0
    .array-data 1
        0x38t
        -0xft
        -0x5at
        0x79t
        0xdt
        0x61t
        -0xet
        0x4at
        -0xbt
        0xet
        0x5at
        0x37t
        -0x11t
        0x7ft
        0x42t
        0xbt
        -0xbt
        0xct
        0x2ct
        0x58t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/SimpleInteractiveStartupActionBase;-><init>()V

    .line 57
    new-instance v0, Lcom/eltechs/axs/configuration/startup/actions/CheckLicense$1;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/configuration/startup/actions/CheckLicense$1;-><init>(Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;)V

    iput-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;->licenseCheckerCallback:Lcom/eltechs/axs/helpers/licensing/LicenseCheckerCallback;

    .line 30
    iput-object p1, p0, Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;->base64AppPublicKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;->cleanup()V

    return-void
.end method

.method static synthetic access$100(Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;I)Ljava/lang/String;
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;->applicationErrorString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private applicationErrorString(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, "!UNKNOWN!"

    return-object p1

    :pswitch_0
    const-string p1, "ERROR_MISSING_PERMISSION"

    return-object p1

    :pswitch_1
    const-string p1, "ERROR_INVALID_PUBLIC_KEY"

    return-object p1

    :pswitch_2
    const-string p1, "ERROR_CHECK_IN_PROGRESS"

    return-object p1

    :pswitch_3
    const-string p1, "ERROR_NOT_MARKET_MANAGED"

    return-object p1

    :pswitch_4
    const-string p1, "ERROR_NON_MATCHING_UID"

    return-object p1

    :pswitch_5
    const-string p1, "ERROR_INVALID_PACKAGE_NAME"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private cleanup()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;->licenseChecker:Lcom/eltechs/axs/helpers/licensing/LicenseChecker;

    invoke-virtual {v0}, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->onDestroy()V

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;->licenseChecker:Lcom/eltechs/axs/helpers/licensing/LicenseChecker;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    .line 42
    invoke-static {}, Lcom/eltechs/axs/Globals;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    new-instance v2, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;

    new-instance v3, Lcom/eltechs/axs/helpers/licensing/AESObfuscator;

    sget-object v4, Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;->SALT:[B

    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1}, Lcom/eltechs/axs/helpers/licensing/AESObfuscator;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v0, v3}, Lcom/eltechs/axs/helpers/licensing/ServerManagedPolicy;-><init>(Landroid/content/Context;Lcom/eltechs/axs/helpers/licensing/Obfuscator;)V

    .line 51
    new-instance v1, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;

    iget-object v3, p0, Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;->base64AppPublicKey:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3}, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;-><init>(Landroid/content/Context;Lcom/eltechs/axs/helpers/licensing/Policy;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;->licenseChecker:Lcom/eltechs/axs/helpers/licensing/LicenseChecker;

    .line 54
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;->licenseChecker:Lcom/eltechs/axs/helpers/licensing/LicenseChecker;

    iget-object v1, p0, Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;->licenseCheckerCallback:Lcom/eltechs/axs/helpers/licensing/LicenseCheckerCallback;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->checkAccess(Lcom/eltechs/axs/helpers/licensing/LicenseCheckerCallback;)V

    return-void
.end method

.method public getInfo()Lcom/eltechs/axs/configuration/startup/StartupActionInfo;
    .locals 2

    .line 36
    new-instance v0, Lcom/eltechs/axs/configuration/startup/StartupActionInfo;

    sget v1, Lcom/eltechs/axs/R$string;->sa_checking_license:I

    invoke-static {v1}, Lcom/eltechs/axs/helpers/AndroidHelpers;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/eltechs/axs/configuration/startup/StartupActionInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public userInteractionCanceled()V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;->cleanup()V

    .line 102
    invoke-static {}, Lcom/eltechs/axs/activities/StartupActivity;->shutdownAXSApplication()V

    return-void
.end method

.method public userInteractionFinished()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;->licenseChecker:Lcom/eltechs/axs/helpers/licensing/LicenseChecker;

    iget-object v1, p0, Lcom/eltechs/axs/configuration/startup/actions/CheckLicense;->licenseCheckerCallback:Lcom/eltechs/axs/helpers/licensing/LicenseCheckerCallback;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/helpers/licensing/LicenseChecker;->checkAccess(Lcom/eltechs/axs/helpers/licensing/LicenseCheckerCallback;)V

    return-void
.end method
