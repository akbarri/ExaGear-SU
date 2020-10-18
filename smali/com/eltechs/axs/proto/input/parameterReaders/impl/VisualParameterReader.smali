.class public Lcom/eltechs/axs/proto/input/parameterReaders/impl/VisualParameterReader;
.super Lcom/eltechs/axs/proto/input/parameterReaders/impl/ReferenceToObjectParameterReader;
.source "VisualParameterReader.java"


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)V
    .locals 0

    .line 24
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

    .line 30
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getDrawablesManager()Lcom/eltechs/axs/xserver/DrawablesManager;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/eltechs/axs/xserver/DrawablesManager;->getVisual(I)Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object p1

    if-nez p1, :cond_0

    .line 34
    new-instance p1, Lcom/eltechs/axs/proto/input/errors/BadMatch;

    invoke-direct {p1}, Lcom/eltechs/axs/proto/input/errors/BadMatch;-><init>()V

    throw p1

    :cond_0
    return-object p1
.end method
