.class public Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterMouseWheel;
.super Ljava/lang/Object;
.source "ScrollAdapterMouseWheel.java"

# interfaces
.implements Lcom/eltechs/axs/GuestAppActionAdapters/SyncScrollAdapter;


# static fields
.field private static final directionToButtonCodeY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final per:Lcom/eltechs/axs/PointerEventReporter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterMouseWheel;->directionToButtonCodeY:Ljava/util/Map;

    .line 22
    sget-object v0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterMouseWheel;->directionToButtonCodeY:Ljava/util/Map;

    sget-object v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;->UP:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterMouseWheel;->directionToButtonCodeY:Ljava/util/Map;

    sget-object v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;->NONE:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterMouseWheel;->directionToButtonCodeY:Ljava/util/Map;

    sget-object v1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;->DOWN:Lcom/eltechs/axs/GuestAppActionAdapters/ScrollDirections$DirectionY;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/PointerEventReporter;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterMouseWheel;->per:Lcom/eltechs/axs/PointerEventReporter;

    return-void
.end method

.method private scrollImpl(II)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :goto_0
    add-int/lit8 v0, p2, -0x1

    if-lez p2, :cond_1

    .line 42
    iget-object p2, p0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterMouseWheel;->per:Lcom/eltechs/axs/PointerEventReporter;

    invoke-virtual {p2, p1}, Lcom/eltechs/axs/PointerEventReporter;->buttonPressed(I)V

    .line 43
    iget-object p2, p0, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterMouseWheel;->per:Lcom/eltechs/axs/PointerEventReporter;

    invoke-virtual {p2, p1}, Lcom/eltechs/axs/PointerEventReporter;->buttonReleased(I)V

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
    .locals 0

    .line 57
    sget-object p1, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterMouseWheel;->directionToButtonCodeY:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, p3}, Lcom/eltechs/axs/GuestAppActionAdapters/ScrollAdapterMouseWheel;->scrollImpl(II)V

    return-void
.end method
