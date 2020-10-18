.class public Lcom/eltechs/axs/guestApplicationsTracker/impl/Killswitch;
.super Ljava/lang/Object;
.source "Killswitch.java"


# instance fields
.field private controlPipeFd:I
    .annotation build Lcom/eltechs/axs/annotations/UsedByNativeCode;
    .end annotation
.end field

.field private killswitchPid:I
    .annotation build Lcom/eltechs/axs/annotations/UsedByNativeCode;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ubt-helpers"

    .line 23
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/eltechs/axs/guestApplicationsTracker/impl/Killswitch;->initialiseNativeParts()Z

    move-result v0

    const-string v1, "Managed and native parts of Killswitch do not match one another."

    .line 26
    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/mnt/sdcard/killswitch.txt"

    .line 38
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/eltechs/axs/guestApplicationsTracker/impl/Killswitch;->startKillswitch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_0

    .line 42
    new-instance p2, Ljava/io/IOException;

    const-string p3, "Failed to start the killswitch; errno = %d."

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    neg-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    return-void
.end method

.method private static native initialiseNativeParts()Z
.end method

.method private native startKillswitch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native stopKillswitch(II)V
.end method


# virtual methods
.method public stop()V
    .locals 2

    .line 48
    iget v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/Killswitch;->killswitchPid:I

    iget v1, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/Killswitch;->controlPipeFd:I

    invoke-direct {p0, v0, v1}, Lcom/eltechs/axs/guestApplicationsTracker/impl/Killswitch;->stopKillswitch(II)V

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/Killswitch;->killswitchPid:I

    .line 51
    iput v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/Killswitch;->controlPipeFd:I

    return-void
.end method
