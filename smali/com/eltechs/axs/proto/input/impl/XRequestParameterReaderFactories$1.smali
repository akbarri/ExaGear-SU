.class final Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories$1;
.super Ljava/lang/Object;
.source "XRequestParameterReaderFactories.java"

# interfaces
.implements Lcom/eltechs/axs/proto/input/annotations/RequestContextParamReadersFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createReader(Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;)Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;
    .locals 1

    .line 39
    invoke-virtual {p1}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->getRawType()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Lcom/eltechs/axs/xserver/client/XClient;

    if-ne p2, v0, :cond_0

    .line 41
    new-instance p1, Lcom/eltechs/axs/proto/input/parameterReaders/impl/ConnectionContextParameterReader;

    invoke-direct {p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/ConnectionContextParameterReader;-><init>()V

    return-object p1

    .line 43
    :cond_0
    invoke-virtual {p1}, Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;->getRawType()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Lcom/eltechs/axs/xconnectors/XResponse;

    if-ne p1, p2, :cond_1

    .line 45
    new-instance p1, Lcom/eltechs/axs/proto/input/parameterReaders/impl/ResponseParameterReader;

    invoke-direct {p1}, Lcom/eltechs/axs/proto/input/parameterReaders/impl/ResponseParameterReader;-><init>()V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
