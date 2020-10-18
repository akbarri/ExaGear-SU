.class public Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;
.super Ljava/lang/Object;
.source "Translator.java"


# static fields
.field private static final TIME_TO_CONNECT:I = 0x2ee


# instance fields
.field private connection:Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;

.field private final connectionTimeoutTracker:Lcom/eltechs/axs/helpers/SingleshotTimer;

.field private isForking:Z

.field private final owner:Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;

.field private final pid:I


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;I)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/eltechs/axs/helpers/SingleshotTimer;

    invoke-direct {v0}, Lcom/eltechs/axs/helpers/SingleshotTimer;-><init>()V

    iput-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;->connectionTimeoutTracker:Lcom/eltechs/axs/helpers/SingleshotTimer;

    .line 31
    iput-object p1, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;->owner:Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;

    .line 32
    iput p2, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;->pid:I

    .line 34
    invoke-direct {p0}, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;->scheduleDestructionIfNoConnectionIsMade()V

    return-void
.end method

.method static synthetic access$000(Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;)Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;->owner:Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;

    return-object p0
.end method

.method private scheduleDestructionIfNoConnectionIsMade()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;->connectionTimeoutTracker:Lcom/eltechs/axs/helpers/SingleshotTimer;

    new-instance v1, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator$1;

    invoke-direct {v1, p0}, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator$1;-><init>(Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;)V

    const/16 v2, 0x2ee

    invoke-virtual {v0, v2, v1}, Lcom/eltechs/axs/helpers/SingleshotTimer;->schedule(ILjava/lang/Runnable;)Ljava/util/TimerTask;

    return-void
.end method


# virtual methods
.method public connectionEstablished(Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;->connectionTimeoutTracker:Lcom/eltechs/axs/helpers/SingleshotTimer;

    invoke-virtual {v0}, Lcom/eltechs/axs/helpers/SingleshotTimer;->cancel()V

    .line 46
    iput-object p1, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;->connection:Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;

    .line 47
    invoke-virtual {p1, p0}, Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;->associate(Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;)V

    return-void
.end method

.method public connectionLost(Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    invoke-static {v0}, Lcom/eltechs/axs/helpers/Assert;->state(Z)V

    .line 54
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;->connection:Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;

    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;->connection:Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;

    .line 57
    invoke-direct {p0}, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;->scheduleDestructionIfNoConnectionIsMade()V

    :cond_1
    return-void
.end method

.method public forkDone(I)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;->owner:Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;

    monitor-enter v0

    if-lez p1, :cond_0

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;->owner:Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;

    invoke-virtual {v1, p1}, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;->registerTranslator(I)Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 99
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;->sendEmptyPacket()V

    const/4 p1, 0x0

    .line 100
    iput-boolean p1, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;->isForking:Z

    .line 101
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public forkRequested()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;->owner:Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;

    monitor-enter v0

    .line 85
    :try_start_0
    invoke-virtual {p0}, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;->sendEmptyPacket()V

    const/4 v1, 0x1

    .line 86
    iput-boolean v1, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;->isForking:Z

    .line 87
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPid()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;->pid:I

    return v0
.end method

.method public isForking()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;->isForking:Z

    return v0
.end method

.method public sendEmptyPacket()V
    .locals 1

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;->connection:Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;

    invoke-virtual {v0}, Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;->sendEmptyPacket()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;->owner:Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;

    invoke-virtual {v0, p0}, Lcom/eltechs/axs/guestApplicationsTracker/impl/GuestApplicationsCollection;->killTranslator(Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "ubt[%d]"

    const/4 v1, 0x1

    .line 123
    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
