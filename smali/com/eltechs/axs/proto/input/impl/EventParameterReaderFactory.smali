.class public Lcom/eltechs/axs/proto/input/impl/EventParameterReaderFactory;
.super Ljava/lang/Object;
.source "EventParameterReaderFactory.java"


# static fields
.field public static INSTANCE:Lcom/eltechs/axs/proto/input/annotations/RequestParamReadersFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/eltechs/axs/proto/input/impl/EventParameterReaderFactory$1;

    invoke-direct {v0}, Lcom/eltechs/axs/proto/input/impl/EventParameterReaderFactory$1;-><init>()V

    sput-object v0, Lcom/eltechs/axs/proto/input/impl/EventParameterReaderFactory;->INSTANCE:Lcom/eltechs/axs/proto/input/annotations/RequestParamReadersFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
