.class public Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFactory;
.super Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactoryImplBase;
.source "GLDrawablesFactory.java"


# static fields
.field private static final drawablesFinalisationThread:Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFinaliserThread;

.field private static final finalisedDrawablesReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/ref/Reference<",
            "Lcom/eltechs/axs/xserver/Drawable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFactory;->finalisedDrawablesReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 44
    new-instance v0, Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFinaliserThread;

    sget-object v1, Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFactory;->finalisedDrawablesReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v1}, Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFinaliserThread;-><init>(Ljava/lang/ref/ReferenceQueue;)V

    sput-object v0, Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFactory;->drawablesFinalisationThread:Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFinaliserThread;

    .line 46
    sget-object v0, Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFactory;->drawablesFinalisationThread:Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFinaliserThread;

    invoke-virtual {v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFinaliserThread;->start()V

    return-void
.end method

.method private constructor <init>(Ljava/util/Collection;Ljava/util/Collection;Lcom/eltechs/axs/xserver/impl/drawables/Visual;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/xserver/impl/drawables/Visual;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;",
            ">;",
            "Lcom/eltechs/axs/xserver/impl/drawables/Visual;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/eltechs/axs/xserver/impl/drawables/DrawablesFactoryImplBase;-><init>(Ljava/util/Collection;Ljava/util/Collection;Lcom/eltechs/axs/xserver/impl/drawables/Visual;)V

    return-void
.end method

.method public static create(I)Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFactory;
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    const-string v0, "Invalid BPP."

    .line 148
    invoke-static {p0, v0}, Lcom/eltechs/axs/helpers/Assert;->isTrue(ZLjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 144
    :pswitch_0
    invoke-static {}, Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFactory;->create16Depth()Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFactory;

    move-result-object p0

    return-object p0

    .line 142
    :pswitch_1
    invoke-static {}, Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFactory;->create15Depth()Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFactory;

    move-result-object p0

    return-object p0

    .line 146
    :cond_0
    invoke-static {}, Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFactory;->create32Depth()Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFactory;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static create15Depth()Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFactory;
    .locals 6

    .line 118
    invoke-static {}, Lcom/eltechs/axs/xserver/impl/SmallIdsGenerator;->generateId()I

    move-result v0

    const/16 v1, 0xf

    const/16 v2, 0x10

    const/16 v3, 0x7c00

    const/16 v4, 0x3e0

    const/16 v5, 0x1f

    invoke-static/range {v0 .. v5}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->makeDisplayableVisual(IIIIII)Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object v0

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 121
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-static {}, Lcom/eltechs/axs/xserver/impl/SmallIdsGenerator;->generateId()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->makeNonDisplayableVisual(II)Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 125
    new-instance v4, Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;

    const/16 v5, 0x10

    invoke-direct {v4, v3, v3, v5}, Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;-><init>(III)V

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 126
    new-instance v3, Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;

    const/16 v4, 0xf

    invoke-direct {v3, v4, v5, v5}, Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v3, Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFactory;

    invoke-direct {v3, v1, v2, v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFactory;-><init>(Ljava/util/Collection;Ljava/util/Collection;Lcom/eltechs/axs/xserver/impl/drawables/Visual;)V

    return-object v3
.end method

.method public static create16Depth()Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFactory;
    .locals 6

    .line 93
    invoke-static {}, Lcom/eltechs/axs/xserver/impl/SmallIdsGenerator;->generateId()I

    move-result v0

    const/16 v1, 0x10

    const/16 v2, 0x10

    const v3, 0xf800

    const/16 v4, 0x7e0

    const/16 v5, 0x1f

    invoke-static/range {v0 .. v5}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->makeDisplayableVisual(IIIIII)Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object v0

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-static {}, Lcom/eltechs/axs/xserver/impl/SmallIdsGenerator;->generateId()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->makeNonDisplayableVisual(II)Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 100
    new-instance v4, Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;

    const/16 v5, 0x10

    invoke-direct {v4, v3, v3, v5}, Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;-><init>(III)V

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 101
    new-instance v3, Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;

    invoke-direct {v3, v5, v5, v5}, Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v3, Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFactory;

    invoke-direct {v3, v1, v2, v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFactory;-><init>(Ljava/util/Collection;Ljava/util/Collection;Lcom/eltechs/axs/xserver/impl/drawables/Visual;)V

    return-object v3
.end method

.method public static create32Depth()Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFactory;
    .locals 6

    .line 67
    invoke-static {}, Lcom/eltechs/axs/xserver/impl/SmallIdsGenerator;->generateId()I

    move-result v0

    const/16 v1, 0x20

    const/16 v2, 0x18

    const/high16 v3, 0xff0000

    const v4, 0xff00

    const/16 v5, 0xff

    invoke-static/range {v0 .. v5}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->makeDisplayableVisual(IIIIII)Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-static {}, Lcom/eltechs/axs/xserver/impl/SmallIdsGenerator;->generateId()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/eltechs/axs/xserver/impl/drawables/Visual;->makeNonDisplayableVisual(II)Lcom/eltechs/axs/xserver/impl/drawables/Visual;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    new-instance v4, Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;

    const/16 v5, 0x20

    invoke-direct {v4, v3, v3, v5}, Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;-><init>(III)V

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v3, Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;

    const/16 v4, 0x18

    invoke-direct {v3, v4, v5, v5}, Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v3, Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;

    invoke-direct {v3, v5, v5, v5}, Lcom/eltechs/axs/xserver/impl/drawables/ImageFormat;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v3, Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFactory;

    invoke-direct {v3, v1, v2, v0}, Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFactory;-><init>(Ljava/util/Collection;Ljava/util/Collection;Lcom/eltechs/axs/xserver/impl/drawables/Visual;)V

    return-object v3
.end method


# virtual methods
.method public create(ILcom/eltechs/axs/xserver/Window;IILcom/eltechs/axs/xserver/impl/drawables/Visual;)Lcom/eltechs/axs/xserver/Drawable;
    .locals 7

    .line 162
    new-instance v6, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;-><init>(ILcom/eltechs/axs/xserver/Window;IILcom/eltechs/axs/xserver/impl/drawables/Visual;)V

    .line 163
    new-instance p1, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawableDestroyer;

    invoke-direct {p1, v6}, Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawableDestroyer;-><init>(Lcom/eltechs/axs/xserver/impl/drawables/gl/PersistentGLDrawable;)V

    .line 165
    sget-object p2, Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFactory;->drawablesFinalisationThread:Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFinaliserThread;

    invoke-virtual {p2, v6, p1}, Lcom/eltechs/axs/xserver/impl/drawables/gl/GLDrawablesFinaliserThread;->registerFinalisationHandler(Ljava/lang/Object;Ljava/lang/Runnable;)V

    return-object v6
.end method
