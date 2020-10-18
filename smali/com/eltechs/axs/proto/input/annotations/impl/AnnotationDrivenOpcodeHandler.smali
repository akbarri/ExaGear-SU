.class public Lcom/eltechs/axs/proto/input/annotations/impl/AnnotationDrivenOpcodeHandler;
.super Ljava/lang/Object;
.source "AnnotationDrivenOpcodeHandler.java"

# interfaces
.implements Lcom/eltechs/axs/proto/input/OpcodeHandler;


# instance fields
.field private final handlerMethod:Ljava/lang/reflect/Method;

.field private final handlerObject:Ljava/lang/Object;

.field private final locks:[Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

.field private final requestParser:Lcom/eltechs/axs/proto/input/annotations/impl/AnnotationDrivenRequestParser;

.field private final xServer:Lcom/eltechs/axs/xserver/XServer;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Lcom/eltechs/axs/xserver/LocksManager$Subsystem;Lcom/eltechs/axs/proto/input/annotations/impl/AnnotationDrivenRequestParser;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/eltechs/axs/proto/input/annotations/impl/AnnotationDrivenOpcodeHandler;->handlerObject:Ljava/lang/Object;

    .line 50
    iput-object p2, p0, Lcom/eltechs/axs/proto/input/annotations/impl/AnnotationDrivenOpcodeHandler;->handlerMethod:Ljava/lang/reflect/Method;

    .line 51
    iput-object p3, p0, Lcom/eltechs/axs/proto/input/annotations/impl/AnnotationDrivenOpcodeHandler;->locks:[Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    .line 53
    invoke-direct {p0}, Lcom/eltechs/axs/proto/input/annotations/impl/AnnotationDrivenOpcodeHandler;->getXServer()Lcom/eltechs/axs/xserver/XServer;

    move-result-object p1

    iput-object p1, p0, Lcom/eltechs/axs/proto/input/annotations/impl/AnnotationDrivenOpcodeHandler;->xServer:Lcom/eltechs/axs/xserver/XServer;

    .line 54
    iput-object p4, p0, Lcom/eltechs/axs/proto/input/annotations/impl/AnnotationDrivenOpcodeHandler;->requestParser:Lcom/eltechs/axs/proto/input/annotations/impl/AnnotationDrivenRequestParser;

    return-void
.end method

.method private getXServer()Lcom/eltechs/axs/xserver/XServer;
    .locals 5

    .line 66
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/annotations/impl/AnnotationDrivenOpcodeHandler;->handlerObject:Ljava/lang/Object;

    instance-of v0, v0, Lcom/eltechs/axs/proto/input/annotations/BoundToXServer;

    const-string v1, "Request handler objects must be bound to a X-Server, but %s is not."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/eltechs/axs/proto/input/annotations/impl/AnnotationDrivenOpcodeHandler;->handlerObject:Ljava/lang/Object;

    .line 68
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 66
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/annotations/impl/AnnotationDrivenOpcodeHandler;->handlerObject:Ljava/lang/Object;

    check-cast v0, Lcom/eltechs/axs/proto/input/annotations/BoundToXServer;

    invoke-interface {v0}, Lcom/eltechs/axs/proto/input/annotations/BoundToXServer;->getXServer()Lcom/eltechs/axs/xserver/XServer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public handleRequest(Lcom/eltechs/axs/xserver/client/XClient;IBLcom/eltechs/axs/xconnectors/XRequest;Lcom/eltechs/axs/xconnectors/XResponse;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/eltechs/axs/proto/input/XProtocolError;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/eltechs/axs/proto/input/annotations/impl/AnnotationDrivenOpcodeHandler;->xServer:Lcom/eltechs/axs/xserver/XServer;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/XServer;->getLocksManager()Lcom/eltechs/axs/xserver/LocksManager;

    move-result-object v0

    iget-object v1, p0, Lcom/eltechs/axs/proto/input/annotations/impl/AnnotationDrivenOpcodeHandler;->locks:[Lcom/eltechs/axs/xserver/LocksManager$Subsystem;

    invoke-interface {v0, v1}, Lcom/eltechs/axs/xserver/LocksManager;->lock([Lcom/eltechs/axs/xserver/LocksManager$Subsystem;)Lcom/eltechs/axs/xserver/LocksManager$XLock;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v1, 0x0

    .line 78
    :try_start_1
    iget-object v2, p0, Lcom/eltechs/axs/proto/input/annotations/impl/AnnotationDrivenOpcodeHandler;->requestParser:Lcom/eltechs/axs/proto/input/annotations/impl/AnnotationDrivenRequestParser;

    iget-object v4, p0, Lcom/eltechs/axs/proto/input/annotations/impl/AnnotationDrivenOpcodeHandler;->xServer:Lcom/eltechs/axs/xserver/XServer;

    move-object v3, p1

    move-object v5, p4

    move-object v6, p5

    move v7, p2

    move v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/eltechs/axs/proto/input/annotations/impl/AnnotationDrivenRequestParser;->getRequestHandlerParameters(Ljava/lang/Object;Lcom/eltechs/axs/xserver/XServer;Lcom/eltechs/axs/xconnectors/XRequest;Lcom/eltechs/axs/xconnectors/XResponse;IB)[Ljava/lang/Object;

    move-result-object p1

    .line 79
    iget-object p2, p0, Lcom/eltechs/axs/proto/input/annotations/impl/AnnotationDrivenOpcodeHandler;->handlerMethod:Ljava/lang/reflect/Method;

    iget-object p3, p0, Lcom/eltechs/axs/proto/input/annotations/impl/AnnotationDrivenOpcodeHandler;->handlerObject:Ljava/lang/Object;

    invoke-virtual {p2, p3, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    .line 80
    :try_start_2
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 76
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    .line 80
    :try_start_4
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_1
    move-exception p2

    :try_start_5
    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lcom/eltechs/axs/xserver/LocksManager$XLock;->close()V

    :cond_1
    :goto_1
    throw p1
    :try_end_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_3

    :catch_2
    move-exception p1

    .line 84
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    .line 85
    instance-of p2, p1, Ljava/io/IOException;

    if-eqz p2, :cond_2

    .line 87
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 89
    :cond_2
    instance-of p2, p1, Lcom/eltechs/axs/proto/input/XProtocolError;

    if-eqz p2, :cond_3

    .line 91
    check-cast p1, Lcom/eltechs/axs/proto/input/XProtocolError;

    throw p1

    .line 100
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :catch_3
    :cond_4
    :goto_2
    return-void
.end method
