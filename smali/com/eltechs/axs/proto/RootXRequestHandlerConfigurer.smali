.class public Lcom/eltechs/axs/proto/RootXRequestHandlerConfigurer;
.super Ljava/lang/Object;
.source "RootXRequestHandlerConfigurer.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static configureCoreXProtocolDispatcher(Lcom/eltechs/axs/proto/input/impl/RootXRequestHandler;Lcom/eltechs/axs/xserver/XServer;)Lcom/eltechs/axs/proto/input/impl/CoreXProtocolDispatcher;
    .locals 5

    .line 63
    new-instance v0, Lcom/eltechs/axs/proto/input/impl/CoreXProtocolDispatcher;

    invoke-direct {v0}, Lcom/eltechs/axs/proto/input/impl/CoreXProtocolDispatcher;-><init>()V

    .line 65
    new-instance v1, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer;

    sget-object v2, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories;->CONTEXT_PARAM_READERS_FACTORY:Lcom/eltechs/axs/proto/input/annotations/RequestContextParamReadersFactory;

    sget-object v3, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories;->REQUEST_PARAM_READERS_FACTORY:Lcom/eltechs/axs/proto/input/annotations/RequestParamReadersFactory;

    invoke-direct {v1, v0, v2, v3}, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer;-><init>(Lcom/eltechs/axs/proto/input/ConfigurableRequestsDispatcher;Lcom/eltechs/axs/proto/input/annotations/RequestContextParamReadersFactory;Lcom/eltechs/axs/proto/input/annotations/RequestParamReadersFactory;)V

    const/16 v2, 0x12

    .line 70
    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests;

    invoke-direct {v3, p1}, Lcom/eltechs/axs/requestHandlers/core/AtomManipulationRequests;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lcom/eltechs/axs/requestHandlers/core/ExtensionInquiries;

    invoke-direct {v3, p1, p0}, Lcom/eltechs/axs/requestHandlers/core/ExtensionInquiries;-><init>(Lcom/eltechs/axs/xserver/XServer;Lcom/eltechs/axs/proto/input/impl/RootXRequestHandler;)V

    const/4 p0, 0x1

    aput-object v3, v2, p0

    new-instance p0, Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests;

    invoke-direct {p0, p1}, Lcom/eltechs/axs/requestHandlers/core/GraphicsContextManipulationRequests;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    const/4 v3, 0x2

    aput-object p0, v2, v3

    new-instance p0, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests;

    invoke-direct {p0, p1}, Lcom/eltechs/axs/requestHandlers/core/DrawablesManipulationRequests;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    const/4 v3, 0x3

    aput-object p0, v2, v3

    new-instance p0, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests;

    invoke-direct {p0, p1}, Lcom/eltechs/axs/requestHandlers/core/WindowManipulationRequests;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    const/4 v3, 0x4

    aput-object p0, v2, v3

    new-instance p0, Lcom/eltechs/axs/requestHandlers/core/PixmapManipulationRequests;

    invoke-direct {p0, p1}, Lcom/eltechs/axs/requestHandlers/core/PixmapManipulationRequests;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    const/4 v3, 0x5

    aput-object p0, v2, v3

    new-instance p0, Lcom/eltechs/axs/requestHandlers/core/DrawingRequests;

    invoke-direct {p0, p1}, Lcom/eltechs/axs/requestHandlers/core/DrawingRequests;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    const/4 v3, 0x6

    aput-object p0, v2, v3

    new-instance p0, Lcom/eltechs/axs/requestHandlers/core/FocusManipulationRequests;

    invoke-direct {p0, p1}, Lcom/eltechs/axs/requestHandlers/core/FocusManipulationRequests;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    const/4 v3, 0x7

    aput-object p0, v2, v3

    new-instance p0, Lcom/eltechs/axs/requestHandlers/core/CursorManipulationRequests;

    invoke-direct {p0, p1}, Lcom/eltechs/axs/requestHandlers/core/CursorManipulationRequests;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    const/16 v3, 0x8

    aput-object p0, v2, v3

    new-instance p0, Lcom/eltechs/axs/requestHandlers/core/ColormapManipulationRequests;

    invoke-direct {p0, p1}, Lcom/eltechs/axs/requestHandlers/core/ColormapManipulationRequests;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    const/16 v3, 0x9

    aput-object p0, v2, v3

    new-instance p0, Lcom/eltechs/axs/requestHandlers/core/KeyboardRelatedRequest;

    invoke-direct {p0, p1}, Lcom/eltechs/axs/requestHandlers/core/KeyboardRelatedRequest;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    const/16 v3, 0xa

    aput-object p0, v2, v3

    new-instance p0, Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests;

    invoke-direct {p0, p1}, Lcom/eltechs/axs/requestHandlers/core/PointerRelatedRequests;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    const/16 v3, 0xb

    aput-object p0, v2, v3

    new-instance p0, Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests;

    invoke-direct {p0, p1}, Lcom/eltechs/axs/requestHandlers/core/GrabManipulationRequests;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    const/16 v3, 0xc

    aput-object p0, v2, v3

    new-instance p0, Lcom/eltechs/axs/requestHandlers/core/FontManipulationRequests;

    invoke-direct {p0, p1}, Lcom/eltechs/axs/requestHandlers/core/FontManipulationRequests;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    const/16 v3, 0xd

    aput-object p0, v2, v3

    new-instance p0, Lcom/eltechs/axs/requestHandlers/core/EventsRelatedRequests;

    invoke-direct {p0, p1}, Lcom/eltechs/axs/requestHandlers/core/EventsRelatedRequests;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    const/16 v3, 0xe

    aput-object p0, v2, v3

    new-instance p0, Lcom/eltechs/axs/requestHandlers/core/SystemRequests;

    invoke-direct {p0, p1}, Lcom/eltechs/axs/requestHandlers/core/SystemRequests;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    const/16 v3, 0xf

    aput-object p0, v2, v3

    new-instance p0, Lcom/eltechs/axs/requestHandlers/core/ForceScreenSaverRequest;

    invoke-direct {p0, p1}, Lcom/eltechs/axs/requestHandlers/core/ForceScreenSaverRequest;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    const/16 v3, 0x10

    aput-object p0, v2, v3

    new-instance p0, Lcom/eltechs/axs/requestHandlers/core/SelectionManipulationRequests;

    invoke-direct {p0, p1}, Lcom/eltechs/axs/requestHandlers/core/SelectionManipulationRequests;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    const/16 p1, 0x11

    aput-object p0, v2, p1

    invoke-virtual {v1, v2}, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer;->configureDispatcher([Ljava/lang/Object;)V

    return-object v0
.end method

.method private static configureDRI2Dispatcher(Lcom/eltechs/axs/xserver/XServer;)Lcom/eltechs/axs/proto/input/impl/DRI2ExtensionDispatcher;
    .locals 4

    .line 141
    new-instance v0, Lcom/eltechs/axs/proto/input/impl/DRI2ExtensionDispatcher;

    invoke-direct {v0}, Lcom/eltechs/axs/proto/input/impl/DRI2ExtensionDispatcher;-><init>()V

    .line 143
    new-instance v1, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer;

    sget-object v2, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories;->CONTEXT_PARAM_READERS_FACTORY:Lcom/eltechs/axs/proto/input/annotations/RequestContextParamReadersFactory;

    sget-object v3, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories;->REQUEST_PARAM_READERS_FACTORY:Lcom/eltechs/axs/proto/input/annotations/RequestParamReadersFactory;

    invoke-direct {v1, v0, v2, v3}, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer;-><init>(Lcom/eltechs/axs/proto/input/ConfigurableRequestsDispatcher;Lcom/eltechs/axs/proto/input/annotations/RequestContextParamReadersFactory;Lcom/eltechs/axs/proto/input/annotations/RequestParamReadersFactory;)V

    const/4 v2, 0x1

    .line 148
    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Lcom/eltechs/axs/requestHandlers/dri2/DRI2Requests;

    invoke-direct {v3, p0}, Lcom/eltechs/axs/requestHandlers/dri2/DRI2Requests;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    const/4 p0, 0x0

    aput-object v3, v2, p0

    invoke-virtual {v1, v2}, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer;->configureDispatcher([Ljava/lang/Object;)V

    return-object v0
.end method

.method private static configureGLXDispatcher(Lcom/eltechs/axs/xserver/XServer;)Lcom/eltechs/axs/proto/input/impl/GLXExtensionDispatcher;
    .locals 4

    .line 161
    new-instance v0, Lcom/eltechs/axs/proto/input/impl/GLXExtensionDispatcher;

    invoke-direct {v0}, Lcom/eltechs/axs/proto/input/impl/GLXExtensionDispatcher;-><init>()V

    .line 163
    new-instance v1, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer;

    sget-object v2, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories;->CONTEXT_PARAM_READERS_FACTORY:Lcom/eltechs/axs/proto/input/annotations/RequestContextParamReadersFactory;

    sget-object v3, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories;->REQUEST_PARAM_READERS_FACTORY:Lcom/eltechs/axs/proto/input/annotations/RequestParamReadersFactory;

    invoke-direct {v1, v0, v2, v3}, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer;-><init>(Lcom/eltechs/axs/proto/input/ConfigurableRequestsDispatcher;Lcom/eltechs/axs/proto/input/annotations/RequestContextParamReadersFactory;Lcom/eltechs/axs/proto/input/annotations/RequestParamReadersFactory;)V

    const/4 v2, 0x1

    .line 168
    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;

    invoke-direct {v3, p0}, Lcom/eltechs/axs/requestHandlers/glx/GLXRequests;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    const/4 p0, 0x0

    aput-object v3, v2, p0

    invoke-virtual {v1, v2}, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer;->configureDispatcher([Ljava/lang/Object;)V

    return-object v0
.end method

.method private static configureMITShmDispatcher(Lcom/eltechs/axs/xserver/XServer;)Lcom/eltechs/axs/proto/input/impl/MITShmExtensionDispatcher;
    .locals 4

    .line 121
    new-instance v0, Lcom/eltechs/axs/proto/input/impl/MITShmExtensionDispatcher;

    invoke-direct {v0}, Lcom/eltechs/axs/proto/input/impl/MITShmExtensionDispatcher;-><init>()V

    .line 123
    new-instance v1, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer;

    sget-object v2, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories;->CONTEXT_PARAM_READERS_FACTORY:Lcom/eltechs/axs/proto/input/annotations/RequestContextParamReadersFactory;

    sget-object v3, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories;->REQUEST_PARAM_READERS_FACTORY:Lcom/eltechs/axs/proto/input/annotations/RequestParamReadersFactory;

    invoke-direct {v1, v0, v2, v3}, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer;-><init>(Lcom/eltechs/axs/proto/input/ConfigurableRequestsDispatcher;Lcom/eltechs/axs/proto/input/annotations/RequestContextParamReadersFactory;Lcom/eltechs/axs/proto/input/annotations/RequestParamReadersFactory;)V

    const/4 v2, 0x1

    .line 128
    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Lcom/eltechs/axs/requestHandlers/mitshm/MITShmRequests;

    invoke-direct {v3, p0}, Lcom/eltechs/axs/requestHandlers/mitshm/MITShmRequests;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    const/4 p0, 0x0

    aput-object v3, v2, p0

    invoke-virtual {v1, v2}, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer;->configureDispatcher([Ljava/lang/Object;)V

    return-object v0
.end method

.method private static configureXTestDispatcher(Lcom/eltechs/axs/xserver/XServer;)Lcom/eltechs/axs/proto/input/impl/XTestExtensionDispatcher;
    .locals 4

    .line 101
    new-instance v0, Lcom/eltechs/axs/proto/input/impl/XTestExtensionDispatcher;

    invoke-direct {v0}, Lcom/eltechs/axs/proto/input/impl/XTestExtensionDispatcher;-><init>()V

    .line 103
    new-instance v1, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer;

    sget-object v2, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories;->CONTEXT_PARAM_READERS_FACTORY:Lcom/eltechs/axs/proto/input/annotations/RequestContextParamReadersFactory;

    sget-object v3, Lcom/eltechs/axs/proto/input/impl/XRequestParameterReaderFactories;->REQUEST_PARAM_READERS_FACTORY:Lcom/eltechs/axs/proto/input/annotations/RequestParamReadersFactory;

    invoke-direct {v1, v0, v2, v3}, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer;-><init>(Lcom/eltechs/axs/proto/input/ConfigurableRequestsDispatcher;Lcom/eltechs/axs/proto/input/annotations/RequestContextParamReadersFactory;Lcom/eltechs/axs/proto/input/annotations/RequestParamReadersFactory;)V

    const/4 v2, 0x1

    .line 108
    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Lcom/eltechs/axs/requestHandlers/xtest/XTestRequests;

    invoke-direct {v3, p0}, Lcom/eltechs/axs/requestHandlers/xtest/XTestRequests;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    const/4 p0, 0x0

    aput-object v3, v2, p0

    invoke-virtual {v1, v2}, Lcom/eltechs/axs/proto/input/annotations/AnnotationDrivenRequestDispatcherConfigurer;->configureDispatcher([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static createRequestHandler(Lcom/eltechs/axs/xserver/XServer;)Lcom/eltechs/axs/proto/input/impl/RootXRequestHandler;
    .locals 3

    .line 33
    new-instance v0, Lcom/eltechs/axs/proto/input/impl/RootXRequestHandler;

    invoke-direct {v0, p0}, Lcom/eltechs/axs/proto/input/impl/RootXRequestHandler;-><init>(Lcom/eltechs/axs/xserver/XServer;)V

    .line 36
    invoke-static {v0, p0}, Lcom/eltechs/axs/proto/RootXRequestHandlerConfigurer;->configureCoreXProtocolDispatcher(Lcom/eltechs/axs/proto/input/impl/RootXRequestHandler;Lcom/eltechs/axs/xserver/XServer;)Lcom/eltechs/axs/proto/input/impl/CoreXProtocolDispatcher;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/eltechs/axs/proto/input/impl/RootXRequestHandler;->installExtensionHandler(ILcom/eltechs/axs/proto/input/ExtensionRequestHandler;)V

    .line 39
    invoke-static {p0}, Lcom/eltechs/axs/proto/RootXRequestHandlerConfigurer;->configureXTestDispatcher(Lcom/eltechs/axs/xserver/XServer;)Lcom/eltechs/axs/proto/input/impl/XTestExtensionDispatcher;

    move-result-object v1

    const/16 v2, 0x8e

    invoke-virtual {v0, v2, v1}, Lcom/eltechs/axs/proto/input/impl/RootXRequestHandler;->installExtensionHandler(ILcom/eltechs/axs/proto/input/ExtensionRequestHandler;)V

    .line 40
    invoke-virtual {p0}, Lcom/eltechs/axs/xserver/XServer;->isShmAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8c

    .line 42
    invoke-static {p0}, Lcom/eltechs/axs/proto/RootXRequestHandlerConfigurer;->configureMITShmDispatcher(Lcom/eltechs/axs/xserver/XServer;)Lcom/eltechs/axs/proto/input/impl/MITShmExtensionDispatcher;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/eltechs/axs/proto/input/impl/RootXRequestHandler;->installExtensionHandler(ILcom/eltechs/axs/proto/input/ExtensionRequestHandler;)V

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/eltechs/axs/xserver/XServer;->isHWRenderingAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x99

    .line 46
    invoke-static {p0}, Lcom/eltechs/axs/proto/RootXRequestHandlerConfigurer;->configureDRI2Dispatcher(Lcom/eltechs/axs/xserver/XServer;)Lcom/eltechs/axs/proto/input/impl/DRI2ExtensionDispatcher;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/eltechs/axs/proto/input/impl/RootXRequestHandler;->installExtensionHandler(ILcom/eltechs/axs/proto/input/ExtensionRequestHandler;)V

    const/16 v1, 0x9a

    .line 47
    invoke-static {p0}, Lcom/eltechs/axs/proto/RootXRequestHandlerConfigurer;->configureGLXDispatcher(Lcom/eltechs/axs/xserver/XServer;)Lcom/eltechs/axs/proto/input/impl/GLXExtensionDispatcher;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/eltechs/axs/proto/input/impl/RootXRequestHandler;->installExtensionHandler(ILcom/eltechs/axs/proto/input/ExtensionRequestHandler;)V

    :cond_1
    return-object v0
.end method
