.class public Lcom/eltechs/axs/proto/input/parameterReaders/impl/DrawableParameterReader;
.super Lcom/eltechs/axs/proto/input/parameterReaders/impl/ReferenceToObjectParameterReader;
.source "DrawableParameterReader.java"


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/ReferenceToObjectParameterReader;-><init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)V

    return-void
.end method


# virtual methods
.method protected getReference(Lcom/eltechs/axs/xserver/XServer;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    .line 29
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getDrawablesManager()Lcom/eltechs/axs/xserver/DrawablesManager;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/eltechs/axs/xserver/DrawablesManager;->getDrawable(I)Lcom/eltechs/axs/xserver/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 32
    new-instance p1, Lcom/eltechs/axs/proto/input/errors/BadDrawable;

    invoke-direct {p1, p2}, Lcom/eltechs/axs/proto/input/errors/BadDrawable;-><init>(I)V

    throw p1

    :cond_0
    return-object p1
.end method
