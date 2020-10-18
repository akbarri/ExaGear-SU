.class public Lcom/eltechs/axs/proto/input/parameterReaders/impl/CursorParameterReader;
.super Lcom/eltechs/axs/proto/input/parameterReaders/impl/ReferenceToObjectParameterReader;
.source "CursorParameterReader.java"


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/proto/input/annotations/impl/RequestDataReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;)V
    .locals 0

    .line 18
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

    .line 24
    invoke-virtual {p1}, Lcom/eltechs/axs/xserver/XServer;->getCursorsManager()Lcom/eltechs/axs/xserver/CursorsManager;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/eltechs/axs/xserver/CursorsManager;->getCursor(I)Lcom/eltechs/axs/xserver/Cursor;

    move-result-object p1

    if-nez p1, :cond_0

    .line 27
    new-instance p1, Lcom/eltechs/axs/proto/input/errors/BadCursor;

    invoke-direct {p1, p2}, Lcom/eltechs/axs/proto/input/errors/BadCursor;-><init>(I)V

    throw p1

    :cond_0
    return-object p1
.end method
