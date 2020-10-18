.class public Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;
.super Ljava/lang/Object;
.source "DynamicConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/iwgang/countdownview/DynamicConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackgroundInfo"
.end annotation


# instance fields
.field private borderColor:Ljava/lang/Integer;

.field private borderRadius:Ljava/lang/Float;

.field private borderSize:Ljava/lang/Float;

.field private color:Ljava/lang/Integer;

.field private divisionLineColor:Ljava/lang/Integer;

.field private divisionLineSize:Ljava/lang/Float;

.field private hasData:Z

.field private isShowBorder:Ljava/lang/Boolean;

.field private isShowDivisionLine:Ljava/lang/Boolean;

.field private radius:Ljava/lang/Float;

.field private size:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 432
    iput-boolean v0, p0, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->hasData:Z

    return-void
.end method

.method static synthetic access$3000(Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;)Z
    .locals 0

    .line 431
    iget-boolean p0, p0, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->hasData:Z

    return p0
.end method


# virtual methods
.method public getBorderColor()Ljava/lang/Integer;
    .locals 1

    .line 533
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->borderColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getBorderRadius()Ljava/lang/Float;
    .locals 1

    .line 541
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->borderRadius:Ljava/lang/Float;

    return-object v0
.end method

.method public getBorderSize()Ljava/lang/Float;
    .locals 1

    .line 537
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->borderSize:Ljava/lang/Float;

    return-object v0
.end method

.method public getColor()Ljava/lang/Integer;
    .locals 1

    .line 505
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->color:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDivisionLineColor()Ljava/lang/Integer;
    .locals 1

    .line 509
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->divisionLineColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDivisionLineSize()Ljava/lang/Float;
    .locals 1

    .line 513
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->divisionLineSize:Ljava/lang/Float;

    return-object v0
.end method

.method public getRadius()Ljava/lang/Float;
    .locals 1

    .line 521
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->radius:Ljava/lang/Float;

    return-object v0
.end method

.method public getSize()Ljava/lang/Float;
    .locals 1

    .line 525
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->size:Ljava/lang/Float;

    return-object v0
.end method

.method public isShowTimeBgBorder()Ljava/lang/Boolean;
    .locals 1

    .line 529
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->isShowBorder:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isShowTimeBgDivisionLine()Ljava/lang/Boolean;
    .locals 1

    .line 517
    iget-object v0, p0, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->isShowDivisionLine:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setBorderColor(Ljava/lang/Integer;)Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;
    .locals 1

    const/4 v0, 0x1

    .line 493
    iput-boolean v0, p0, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->hasData:Z

    .line 494
    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->borderColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setBorderRadius(Ljava/lang/Float;)Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;
    .locals 1

    const/4 v0, 0x1

    .line 499
    iput-boolean v0, p0, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->hasData:Z

    .line 500
    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->borderRadius:Ljava/lang/Float;

    return-object p0
.end method

.method public setBorderSize(Ljava/lang/Float;)Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;
    .locals 1

    const/4 v0, 0x1

    .line 487
    iput-boolean v0, p0, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->hasData:Z

    .line 488
    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->borderSize:Ljava/lang/Float;

    return-object p0
.end method

.method public setColor(Ljava/lang/Integer;)Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;
    .locals 1

    const/4 v0, 0x1

    .line 445
    iput-boolean v0, p0, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->hasData:Z

    .line 446
    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->color:Ljava/lang/Integer;

    return-object p0
.end method

.method public setDivisionLineColor(Ljava/lang/Integer;)Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;
    .locals 1

    const/4 v0, 0x1

    .line 475
    iput-boolean v0, p0, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->hasData:Z

    .line 476
    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->divisionLineColor:Ljava/lang/Integer;

    return-object p0
.end method

.method public setDivisionLineSize(Ljava/lang/Float;)Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;
    .locals 1

    const/4 v0, 0x1

    .line 469
    iput-boolean v0, p0, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->hasData:Z

    .line 470
    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->divisionLineSize:Ljava/lang/Float;

    return-object p0
.end method

.method public setRadius(Ljava/lang/Float;)Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;
    .locals 1

    const/4 v0, 0x1

    .line 457
    iput-boolean v0, p0, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->hasData:Z

    .line 458
    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->radius:Ljava/lang/Float;

    return-object p0
.end method

.method public setShowTimeBgBorder(Ljava/lang/Boolean;)Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;
    .locals 1

    const/4 v0, 0x1

    .line 481
    iput-boolean v0, p0, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->hasData:Z

    .line 482
    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->isShowBorder:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setShowTimeBgDivisionLine(Ljava/lang/Boolean;)Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;
    .locals 1

    const/4 v0, 0x1

    .line 463
    iput-boolean v0, p0, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->hasData:Z

    .line 464
    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->isShowDivisionLine:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setSize(Ljava/lang/Float;)Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;
    .locals 1

    const/4 v0, 0x1

    .line 451
    iput-boolean v0, p0, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->hasData:Z

    .line 452
    iput-object p1, p0, Lcn/iwgang/countdownview/DynamicConfig$BackgroundInfo;->size:Ljava/lang/Float;

    return-object p0
.end method
