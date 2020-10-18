.class final Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories$3;
.super Ljava/lang/Object;
.source "XRequestParameterReaderFactories.java"

# interfaces
.implements Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories;->applyMask(Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;Lcom/eltechs/axs/proto/input/annotations/impl/ParameterDescriptor;Lcom/eltechs/axs/proto/input/annotations/ConfigurationContext;)Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$flag:Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;

.field final synthetic val$maskParameterIndex:I

.field final synthetic val$reader:Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;


# direct methods
.method constructor <init>(ILcom/eltechs/axs/xserver/impl/masks/FlagsEnum;Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;)V
    .locals 0

    .line 242
    iput p1, p0, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories$3;->val$maskParameterIndex:I

    iput-object p2, p0, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories$3;->val$flag:Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;

    iput-object p3, p0, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories$3;->val$reader:Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readParameter(Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;
        }
    .end annotation

    .line 246
    iget v0, p0, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories$3;->val$maskParameterIndex:I

    invoke-virtual {p1, v0}, Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;->getCollectedParameter(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/xserver/impl/masks/Mask;

    .line 247
    iget-object v1, p0, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories$3;->val$flag:Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/xserver/impl/masks/Mask;->isSet(Lcom/eltechs/axs/xserver/impl/masks/FlagsEnum;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories$3;->val$reader:Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;

    invoke-interface {v0, p1}, Lcom/eltechs/axs/proto/input/parameterReaders/ParameterReader;->readParameter(Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 252
    invoke-virtual {p1, v0}, Lcom/eltechs/axs/proto/input/annotations/impl/ParametersCollectionContext;->parameterCollected(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
