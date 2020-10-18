.class synthetic Lcom/eltechs/axs/widgets/viewOfXServer/TransformationHelpers$1;
.super Ljava/lang/Object;
.source "TransformationHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eltechs/axs/widgets/viewOfXServer/TransformationHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$eltechs$axs$configuration$XServerViewConfiguration$FitStyleHorizontal:[I

.field static final synthetic $SwitchMap$com$eltechs$axs$configuration$XServerViewConfiguration$FitStyleVertical:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 49
    invoke-static {}, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleVertical;->values()[Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleVertical;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationHelpers$1;->$SwitchMap$com$eltechs$axs$configuration$XServerViewConfiguration$FitStyleVertical:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationHelpers$1;->$SwitchMap$com$eltechs$axs$configuration$XServerViewConfiguration$FitStyleVertical:[I

    sget-object v2, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleVertical;->TOP:Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleVertical;

    invoke-virtual {v2}, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleVertical;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationHelpers$1;->$SwitchMap$com$eltechs$axs$configuration$XServerViewConfiguration$FitStyleVertical:[I

    sget-object v3, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleVertical;->CENTER:Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleVertical;

    invoke-virtual {v3}, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleVertical;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationHelpers$1;->$SwitchMap$com$eltechs$axs$configuration$XServerViewConfiguration$FitStyleVertical:[I

    sget-object v4, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleVertical;->BOTTOM:Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleVertical;

    invoke-virtual {v4}, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleVertical;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationHelpers$1;->$SwitchMap$com$eltechs$axs$configuration$XServerViewConfiguration$FitStyleVertical:[I

    sget-object v5, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleVertical;->STRETCH:Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleVertical;

    invoke-virtual {v5}, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleVertical;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 40
    :catch_3
    invoke-static {}, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;->values()[Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationHelpers$1;->$SwitchMap$com$eltechs$axs$configuration$XServerViewConfiguration$FitStyleHorizontal:[I

    :try_start_4
    sget-object v4, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationHelpers$1;->$SwitchMap$com$eltechs$axs$configuration$XServerViewConfiguration$FitStyleHorizontal:[I

    sget-object v5, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;->LEFT:Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;

    invoke-virtual {v5}, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationHelpers$1;->$SwitchMap$com$eltechs$axs$configuration$XServerViewConfiguration$FitStyleHorizontal:[I

    sget-object v4, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;->CENTER:Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;

    invoke-virtual {v4}, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationHelpers$1;->$SwitchMap$com$eltechs$axs$configuration$XServerViewConfiguration$FitStyleHorizontal:[I

    sget-object v1, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;->RIGHT:Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;

    invoke-virtual {v1}, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/eltechs/axs/widgets/viewOfXServer/TransformationHelpers$1;->$SwitchMap$com$eltechs$axs$configuration$XServerViewConfiguration$FitStyleHorizontal:[I

    sget-object v1, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;->STRETCH:Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;

    invoke-virtual {v1}, Lcom/eltechs/axs/configuration/XServerViewConfiguration$FitStyleHorizontal;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
