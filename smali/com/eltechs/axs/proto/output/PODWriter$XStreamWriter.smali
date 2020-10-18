.class final Lcom/eltechs/axs/proto/output/PODWriter$XStreamWriter;
.super Ljava/lang/Object;
.source "PODWriter.java"

# interfaces
.implements Lcom/eltechs/axs/proto/output/PODVisitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/proto/output/PODWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "XStreamWriter"
.end annotation


# instance fields
.field private final outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;


# direct methods
.method constructor <init>(Lcom/eltechs/axs/xconnectors/XOutputStream;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/eltechs/axs/proto/output/PODWriter$XStreamWriter;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/PODWriter$XStreamWriter;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-interface {v0, p1}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeByte(B)V

    goto :goto_0

    .line 63
    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/PODWriter$XStreamWriter;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeByte(B)V

    goto :goto_0

    .line 66
    :cond_1
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/PODWriter$XStreamWriter;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-interface {v0, p1}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeShort(S)V

    goto :goto_0

    .line 69
    :cond_2
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 71
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/PODWriter$XStreamWriter;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeInt(I)V

    goto :goto_0

    .line 72
    :cond_3
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 74
    iget-object v0, p0, Lcom/eltechs/axs/proto/output/PODWriter$XStreamWriter;->outputStream:Lcom/eltechs/axs/xconnectors/XOutputStream;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/eltechs/axs/xconnectors/XOutputStream;->writeString8(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "Unsupported POD member type %s."

    const/4 v1, 0x1

    .line 77
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method
