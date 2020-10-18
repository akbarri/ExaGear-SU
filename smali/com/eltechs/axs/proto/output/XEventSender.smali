.class public Lcom/eltechs/axs/proto/output/XEventSender;
.super Ljava/lang/Object;
.source "XEventSender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eltechs/axs/proto/output/XEventSender$EventWriter;
    }
.end annotation


# static fields
.field private static final eventWriters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/eltechs/axs/xserver/events/Event;",
            ">;",
            "Lcom/eltechs/axs/proto/output/XEventSender$EventWriter<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final response:Lcom/eltechs/axs/xconnectors/XResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/eltechs/axs/proto/output/XEventSender;->eventWriters:Ljava/util/Map;

    .line 29
    sget-object v0, Lcom/eltechs/axs/proto/output/XEventSender;->eventWriters:Ljava/util/Map;

    const-class v1, Lcom/eltechs/axs/xserver/events/MapNotify;

    new-instance v2, Lcom/eltechs/axs/proto/output/XEventSender$1;

    invoke-direct {v2}, Lcom/eltechs/axs/proto/output/XEventSender$1;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/eltechs/axs/proto/output/XEventSender;->eventWriters:Ljava/util/Map;

    const-class v1, Lcom/eltechs/axs/xserver/events/UnmapNotify;

    new-instance v2, Lcom/eltechs/axs/proto/output/XEventSender$2;

    invoke-direct {v2}, Lcom/eltechs/axs/proto/output/XEventSender$2;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/eltechs/axs/proto/output/XEventSender;->eventWriters:Ljava/util/Map;

    const-class v1, Lcom/eltechs/axs/xserver/events/CreateNotify;

    new-instance v2, Lcom/eltechs/axs/proto/output/XEventSender$3;

    invoke-direct {v2}, Lcom/eltechs/axs/proto/output/XEventSender$3;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/eltechs/axs/proto/output/XEventSender;->eventWriters:Ljava/util/Map;

    const-class v1, Lcom/eltechs/axs/xserver/events/DestroyNotify;

    new-instance v2, Lcom/eltechs/axs/proto/output/XEventSender$4;

    invoke-direct {v2}, Lcom/eltechs/axs/proto/output/XEventSender$4;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/eltechs/axs/proto/output/XEventSender;->eventWriters:Ljava/util/Map;

    const-class v1, Lcom/eltechs/axs/xserver/events/PropertyNotify;

    new-instance v2, Lcom/eltechs/axs/proto/output/XEventSender$5;

    invoke-direct {v2}, Lcom/eltechs/axs/proto/output/XEventSender$5;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/eltechs/axs/proto/output/XEventSender;->eventWriters:Ljava/util/Map;

    const-class v1, Lcom/eltechs/axs/xserver/events/Expose;

    new-instance v2, Lcom/eltechs/axs/proto/output/XEventSender$6;

    invoke-direct {v2}, Lcom/eltechs/axs/proto/output/XEventSender$6;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/eltechs/axs/proto/output/XEventSender;->eventWriters:Ljava/util/Map;

    const-class v1, Lcom/eltechs/axs/xserver/events/ResizeRequest;

    new-instance v2, Lcom/eltechs/axs/proto/output/XEventSender$7;

    invoke-direct {v2}, Lcom/eltechs/axs/proto/output/XEventSender$7;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/eltechs/axs/proto/output/XEventSender;->eventWriters:Ljava/util/Map;

    const-class v1, Lcom/eltechs/axs/xserver/events/MapRequest;

    new-instance v2, Lcom/eltechs/axs/proto/output/XEventSender$8;

    invoke-direct {v2}, Lcom/eltechs/axs/proto/output/XEventSender$8;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/eltechs/axs/proto/output/XEventSender;->eventWriters:Ljava/util/Map;

    const-class v1, Lcom/eltechs/axs/xserver/events/ConfigureNotify;

    new-instance v2, Lcom/eltechs/axs/proto/output/XEventSender$9;

    invoke-direct {v2}, Lcom/eltechs/axs/proto/output/XEventSender$9;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/eltechs/axs/proto/output/XEventSender;->eventWriters:Ljava/util/Map;

    const-class v1, Lcom/eltechs/axs/xserver/events/ConfigureRequest;

    new-instance v2, Lcom/eltechs/axs/proto/output/XEventSender$10;

    invoke-direct {v2}, Lcom/eltechs/axs/proto/output/XEventSender$10;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    new-instance v0, Lcom/eltechs/axs/proto/output/XEventSender$11;

    invoke-direct {v0}, Lcom/eltechs/axs/proto/output/XEventSender$11;-><init>()V

    .line 243
    sget-object v1, Lcom/eltechs/axs/proto/output/XEventSender;->eventWriters:Ljava/util/Map;

    const-class v2, Lcom/eltechs/axs/xserver/events/MotionNotify;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v1, Lcom/eltechs/axs/proto/output/XEventSender;->eventWriters:Ljava/util/Map;

    const-class v2, Lcom/eltechs/axs/xserver/events/ButtonPress;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v1, Lcom/eltechs/axs/proto/output/XEventSender;->eventWriters:Ljava/util/Map;

    const-class v2, Lcom/eltechs/axs/xserver/events/ButtonRelease;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v1, Lcom/eltechs/axs/proto/output/XEventSender;->eventWriters:Ljava/util/Map;

    const-class v2, Lcom/eltechs/axs/xserver/events/KeyPress;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v1, Lcom/eltechs/axs/proto/output/XEventSender;->eventWriters:Ljava/util/Map;

    const-class v2, Lcom/eltechs/axs/xserver/events/KeyRelease;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    new-instance v0, Lcom/eltechs/axs/proto/output/XEventSender$12;

    invoke-direct {v0}, Lcom/eltechs/axs/proto/output/XEventSender$12;-><init>()V

    .line 275
    sget-object v1, Lcom/eltechs/axs/proto/output/XEventSender;->eventWriters:Ljava/util/Map;

    const-class v2, Lcom/eltechs/axs/xserver/events/EnterNotify;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v1, Lcom/eltechs/axs/proto/output/XEventSender;->eventWriters:Ljava/util/Map;

    const-class v2, Lcom/eltechs/axs/xserver/events/LeaveNotify;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/eltechs/axs/proto/output/XEventSender;->eventWriters:Ljava/util/Map;

    const-class v1, Lcom/eltechs/axs/xserver/events/SelectionClear;

    new-instance v2, Lcom/eltechs/axs/proto/output/XEventSender$13;

    invoke-direct {v2}, Lcom/eltechs/axs/proto/output/XEventSender$13;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lcom/eltechs/axs/proto/output/XEventSender;->eventWriters:Ljava/util/Map;

    const-class v1, Lcom/eltechs/axs/xserver/events/SelectionRequest;

    new-instance v2, Lcom/eltechs/axs/proto/output/XEventSender$14;

    invoke-direct {v2}, Lcom/eltechs/axs/proto/output/XEventSender$14;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lcom/eltechs/axs/proto/output/XEventSender;->eventWriters:Ljava/util/Map;

    const-class v1, Lcom/eltechs/axs/xserver/events/SelectionNotify;

    new-instance v2, Lcom/eltechs/axs/proto/output/XEventSender$15;

    invoke-direct {v2}, Lcom/eltechs/axs/proto/output/XEventSender$15;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lcom/eltechs/axs/proto/output/XEventSender;->eventWriters:Ljava/util/Map;

    const-class v1, Lcom/eltechs/axs/xserver/events/MappingNotify;

    new-instance v2, Lcom/eltechs/axs/proto/output/XEventSender$16;

    invoke-direct {v2}, Lcom/eltechs/axs/proto/output/XEventSender$16;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/eltechs/axs/xconnectors/XResponse;)V
    .locals 0

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    iput-object p1, p0, Lcom/eltechs/axs/proto/output/XEventSender;->response:Lcom/eltechs/axs/xconnectors/XResponse;

    return-void
.end method


# virtual methods
.method public sendEvent(Lcom/eltechs/axs/xserver/events/Event;)V
    .locals 2

    .line 366
    sget-object v0, Lcom/eltechs/axs/proto/output/XEventSender;->eventWriters:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eltechs/axs/proto/output/XEventSender$EventWriter;

    if-nez v0, :cond_0

    .line 370
    invoke-static {}, Lcom/eltechs/axs/helpers/Assert;->notImplementedYet()V

    .line 375
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/eltechs/axs/proto/output/XEventSender;->response:Lcom/eltechs/axs/xconnectors/XResponse;

    invoke-interface {v0, v1, p1}, Lcom/eltechs/axs/proto/output/XEventSender$EventWriter;->sendEvent(Lcom/eltechs/axs/xconnectors/XResponse;Lcom/eltechs/axs/xserver/events/Event;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
