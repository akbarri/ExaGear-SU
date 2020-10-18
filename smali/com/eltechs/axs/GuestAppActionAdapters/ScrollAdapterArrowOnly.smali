.class public Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterArrowOnly;
.super Ljava/lang/Object;
.source "ScrollAdapterArrowOnly.java"

# interfaces
.implements Lcom/eltechs/axs/GuestAppActionAdapters/SyncScrollAdapter;


# static fields
.field private static final directionToKeyCodeX:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;",
            "Lcom/eltechs/axs/KeyCodesX;",
            ">;"
        }
    .end annotation
.end field

.field private static final directionToKeyCodeY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;",
            "Lcom/eltechs/axs/KeyCodesX;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ker:Lcom/eltechs/axs/KeyEventReporter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterArrowOnly;->directionToKeyCodeX:Ljava/util/Map;

    .line 27
    sget-object v0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterArrowOnly;->directionToKeyCodeX:Ljava/util/Map;

    sget-object v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;->LEFT:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_LEFT:Lcom/eltechs/axs/KeyCodesX;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterArrowOnly;->directionToKeyCodeX:Ljava/util/Map;

    sget-object v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;->NONE:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_NONE:Lcom/eltechs/axs/KeyCodesX;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterArrowOnly;->directionToKeyCodeX:Ljava/util/Map;

    sget-object v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;->RIGHT:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionX;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_RIGHT:Lcom/eltechs/axs/KeyCodesX;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterArrowOnly;->directionToKeyCodeY:Ljava/util/Map;

    .line 32
    sget-object v0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterArrowOnly;->directionToKeyCodeY:Ljava/util/Map;

    sget-object v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;->UP:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_UP:Lcom/eltechs/axs/KeyCodesX;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterArrowOnly;->directionToKeyCodeY:Ljava/util/Map;

    sget-object v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;->NONE:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_NONE:Lcom/eltechs/axs/KeyCodesX;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterArrowOnly;->directionToKeyCodeY:Ljava/util/Map;

    sget-object v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;->DOWN:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    sget-object v2, Lcom/eltechs/axs/KeyCodesX;->KEY_DOWN:Lcom/eltechs/axs/KeyCodesX;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/KeyEventReporter;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterArrowOnly;->ker:Lcom/eltechs/axs/KeyEventReporter;

    return-void
.end method

.method private scrollImpl(Lcom/eltechs/axs/KeyCodesX;I)V
    .locals 1

    .line 44
    sget-object v0, Lcom/eltechs/axs/KeyCodesX;->KEY_NONE:Lcom/eltechs/axs/KeyCodesX;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    :goto_0
    add-int/lit8 v0, p2, -0x1

    if-lez p2, :cond_1

    .line 52
    iget-object p2, p0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterArrowOnly;->ker:Lcom/eltechs/axs/KeyEventReporter;

    invoke-virtual {p2, p1}, Lcom/eltechs/axs/KeyEventReporter;->reportKeyPressReleaseNoDelay(Lcom/eltechs/axs/KeyCodesX;)V

    move p2, v0

    goto :goto_0

    :cond_1
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

    .line 65
    sget-object v0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterArrowOnly;->directionToKeyCodeX:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/KeyCodesX;

    invoke-direct {p0, p1, p3}, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterArrowOnly;->scrollImpl(Lcom/eltechs/axs/KeyCodesX;I)V

    .line 66
    sget-object p1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterArrowOnly;->directionToKeyCodeY:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/eltechs/axs/KeyCodesX;

    invoke-direct {p0, p1, p3}, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterArrowOnly;->scrollImpl(Lcom/eltechs/axs/KeyCodesX;I)V

    return-void
.end method
