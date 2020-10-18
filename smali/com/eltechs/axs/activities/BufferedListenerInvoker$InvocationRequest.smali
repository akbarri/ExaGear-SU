.class Lcom/eltechs/axs/activities/BufferedListenerInvoker$InvocationRequest;
.super Ljava/lang/Object;
.source "BufferedListenerInvoker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/activities/BufferedListenerInvoker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InvocationRequest"
.end annotation


# instance fields
.field private final arguments:[Ljava/lang/Object;

.field private final method:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/eltechs/axs/activities/BufferedListenerInvoker$InvocationRequest;->method:Ljava/lang/reflect/Method;

    .line 115
    iput-object p2, p0, Lcom/eltechs/axs/activities/BufferedListenerInvoker$InvocationRequest;->arguments:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method invoke(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/eltechs/axs/activities/BufferedListenerInvoker$InvocationRequest;->method:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/eltechs/axs/activities/BufferedListenerInvoker$InvocationRequest;->arguments:[Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
