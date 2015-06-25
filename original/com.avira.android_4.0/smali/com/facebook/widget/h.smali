.class final synthetic Lcom/facebook/widget/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $SwitchMap$com$facebook$widget$LikeView$AuxiliaryViewPosition:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 597
    invoke-static {}, Lcom/facebook/widget/i;->values()[Lcom/facebook/widget/i;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/widget/h;->$SwitchMap$com$facebook$widget$LikeView$AuxiliaryViewPosition:[I

    :try_start_0
    sget-object v0, Lcom/facebook/widget/h;->$SwitchMap$com$facebook$widget$LikeView$AuxiliaryViewPosition:[I

    sget-object v1, Lcom/facebook/widget/i;->TOP:Lcom/facebook/widget/i;

    invoke-virtual {v1}, Lcom/facebook/widget/i;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/facebook/widget/h;->$SwitchMap$com$facebook$widget$LikeView$AuxiliaryViewPosition:[I

    sget-object v1, Lcom/facebook/widget/i;->BOTTOM:Lcom/facebook/widget/i;

    invoke-virtual {v1}, Lcom/facebook/widget/i;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/facebook/widget/h;->$SwitchMap$com$facebook$widget$LikeView$AuxiliaryViewPosition:[I

    sget-object v1, Lcom/facebook/widget/i;->INLINE:Lcom/facebook/widget/i;

    invoke-virtual {v1}, Lcom/facebook/widget/i;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
