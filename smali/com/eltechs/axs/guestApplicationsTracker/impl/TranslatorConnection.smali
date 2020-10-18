.class public Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;
.super Ljava/lang/Object;
.source "TranslatorConnection.java"


# instance fields
.field private final outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

.field private translator:Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/xconnectors/XOutputStream;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    return-void
.end method


# virtual methods
.method public associate(Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;)V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;->translator:Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Already associated with a translator."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;->translator:Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;

    return-void
.end method

.method public getTranslator()Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;->translator:Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Must be associated with a translator."

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->state(ZLjava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;->translator:Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;

    return-object v0
.end method

.method public isAssociatedWithTranslator()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;->translator:Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public processShutdown()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;->translator:Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;->translator:Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;

    invoke-virtual {v0, p0}, Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;->connectionLost(Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;)V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;->translator:Lcom/eltechs/axs/guestApplicationsTracker/impl/Translator;

    :cond_0
    return-void
.end method

.method public sendEmptyPacket()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    invoke-interface {v0}, Lcom/eltechs/axs/xconnectors/XOutputStream;->lock()Lcom/eltechs/axs/xconnectors/XStreamLock;

    move-result-object v0

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    const v2, 0x4b524f46    # 1.3782854E7f

    invoke-interface {v1, v2}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeInt(I)V

    .line 60
    iget-object v1, p0, Lcom/eltechs/axs/guestApplicationsTracker/impl/TranslatorConnection;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeShort(S)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-interface {v0}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/eltechs/axs/xconnectors/XStreamLock;->close()V

    throw v1
.end method
