.class public Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterControlArrow;
.super Ljava/lang/Object;
.source "ScrollAdapterControlArrow.java"

# interfaces
.implements Lcom/eltechs/axs/GuestAppActionAdapters/SyncScrollAdapter;


# static fields
.field private static final directionToKeyCode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;",
            "Ljava/util/Map<",
            "Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;",
            "Lcom/eltechs/axs/KeyCodesX;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final ker:Lcom/eltechs/axs/KeyEventReporter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterControlArrow;->directionToKeyCode:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 29
    sget-object v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;->UP:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_HOME:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;->NONE:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_LEFT:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;->DOWN:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_END:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterControlArrow;->directionToKeyCode:Ljava/util/Map;

    sget-object v2, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;->LEFT:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 35
    sget-object v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;->UP:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_UP:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;->NONE:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_NONE:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;->DOWN:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_DOWN:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterControlArrow;->directionToKeyCode:Ljava/util/Map;

    sget-object v2, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;->NONE:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 41
    sget-object v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;->UP:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_PRIOR:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;->NONE:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_RIGHT:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;->DOWN:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_NEXT:Lcom/eltechs/axs/KeyCodesX;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterControlArrow;->directionToKeyCode:Ljava/util/Map;

    sget-object v2, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;->RIGHT:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/KeyEventReporter;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterControlArrow;->ker:Lcom/eltechs/axs/KeyEventReporter;

    return-void
.end method

.method private pressCtrl()V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterControlArrow;->ker:Lcom/eltechs/axs/KeyEventReporter;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/eltechs/axs/KeyCodesX;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_CONTROL_RIGHT:Lcom/eltechs/axs/KeyCodesX;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/KeyEventReporter;->reportKeysPress([Lcom/eltechs/axs/KeyCodesX;)V

    return-void
.end method

.method private releaseCtrl()V
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterControlArrow;->ker:Lcom/eltechs/axs/KeyEventReporter;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/eltechs/axs/KeyCodesX;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_CONTROL_RIGHT:Lcom/eltechs/axs/KeyCodesX;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/eltechs/axs/KeyEventReporter;->reportKeysRelease([Lcom/eltechs/axs/KeyCodesX;)V

    return-void
.end method

.method private scrollImpl(Lcom/eltechs/axs/KeyCodesX;I)V
    .locals 3

    .line 64
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_NONE:Lcom/eltechs/axs/KeyCodesX;

    if-ne p1, v0, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterControlArrow;->pressCtrl()V

    :goto_0
    add-int/lit8 v0, p2, -0x1

    if-lez p2, :cond_1

    .line 74
    iget-object p2, p0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterControlArrow;->ker:Lcom/eltechs/axs/KeyEventReporter;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/eltechs/axs/KeyCodesX;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p2, v1}, Lcom/eltechs/axs/KeyEventReporter;->reportKeys([Lcom/eltechs/axs/KeyCodesX;)V

    move p2, v0

    goto :goto_0

    .line 76
    :cond_1
    invoke-direct {p0}, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterControlArrow;->releaseCtrl()V

    return-void
.end method


# virtual methods
.method public notifyStart()V
    .locals 0

    return-void
.end method

.method public notifyStop()V
    .locals 0

    return-void
.end method

.method public scroll(Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;I)V
    .locals 1

    .line 89
    sget-object v0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterControlArrow;->directionToKeyCode:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/KeyCodesX;

    invoke-direct {p0, p1, p3}, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterControlArrow;->scrollImpl(Lcom/eltechs/axs/KeyCodesX;I)V

    return-void
.end method
