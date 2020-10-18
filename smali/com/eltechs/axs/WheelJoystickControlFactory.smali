.class public Lcom/eltechs/axs/WheelJoystickControlFactory;
.super Ljava/lang/Object;
.source "WheelJoystickControlFactory.java"


# instance fields
.field private final viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;


# direct methods
.method public constructor <init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/eltechs/axs/WheelJoystickControlFactory;->viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    return-void
.end method


# virtual methods
.method public createSimpleWheel(Lcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;Lcom/eltechs/axs/xserver/ViewFacade;FFFFFLandroid/graphics/Bitmap;F)Lcom/eltechs/axs/SimpleTouchScreenControl;
    .locals 13

    .line 47
    new-instance v0, Lcom/eltechs/axs/PointerEventReporter;

    move-object v7, p0

    iget-object v1, v7, Lcom/eltechs/axs/WheelJoystickControlFactory;->viewOfXServer:Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;

    invoke-direct {v0, v1}, Lcom/eltechs/axs/PointerEventReporter;-><init>(Lcom/eltechs/axs/widgets/viewOfXServer/ViewOfXServer;)V

    .line 48
    new-instance v8, Lcom/eltechs/axs/WheelToPointerAdapter;

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v1, p2

    invoke-direct {v8, v1, v0, v10, v9}, Lcom/eltechs/axs/WheelToPointerAdapter;-><init>(Lcom/eltechs/axs/xserver/ViewFacade;Lcom/eltechs/axs/PointerEventReporter;ZZ)V

    .line 52
    new-instance v11, Lcom/eltechs/axs/WheelJoystickEventAdapter;

    move-object v0, v11

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/eltechs/axs/WheelJoystickEventAdapter;-><init>(Lcom/eltechs/axs/xserver/ViewFacade;FFFFF)V

    .line 58
    new-instance v12, Lcom/eltechs/axs/WheelJoystickVisualizer;

    move-object v0, v12

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p6

    move-object/from16 v4, p8

    move/from16 v5, p9

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/eltechs/axs/WheelJoystickVisualizer;-><init>(FFFLandroid/graphics/Bitmap;FLcom/eltechs/axs/graphicsScene/GraphicsSceneConfigurer;)V

    const/4 v0, 0x2

    .line 64
    new-array v0, v0, [Lcom/eltechs/axs/WheelEventListener;

    aput-object v12, v0, v9

    aput-object v8, v0, v10

    invoke-virtual {v11, v0}, Lcom/eltechs/axs/WheelJoystickEventAdapter;->addListener([Lcom/eltechs/axs/WheelEventListener;)V

    .line 65
    new-instance v0, Lcom/eltechs/axs/TouchArea;

    sub-float v2, p3, p6

    sub-float v3, p4, p6

    add-float v4, p3, p6

    add-float v5, p4, p6

    move-object v1, v0

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/eltechs/axs/TouchArea;-><init>(FFFFLcom/eltechs/axs/TouchEventAdapter;)V

    .line 70
    new-instance v1, Lcom/eltechs/axs/SimpleTouchScreenControl;

    new-array v2, v10, [Lcom/eltechs/axs/TouchArea;

    aput-object v0, v2, v9

    new-array v0, v10, [Lcom/eltechs/axs/TouchScreenControlVisualizer;

    aput-object v12, v0, v9

    invoke-direct {v1, v2, v0}, Lcom/eltechs/axs/SimpleTouchScreenControl;-><init>([Lcom/eltechs/axs/TouchArea;[Lcom/eltechs/axs/TouchScreenControlVisualizer;)V

    return-object v1
.end method
