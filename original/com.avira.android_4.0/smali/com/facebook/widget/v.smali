.class public final enum Lcom/facebook/widget/v;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/widget/v;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/widget/v;

.field public static final enum DEFAULT:Lcom/facebook/widget/v;

.field public static final enum DISPLAY_ALWAYS:Lcom/facebook/widget/v;

.field public static final enum NEVER_DISPLAY:Lcom/facebook/widget/v;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/facebook/widget/v;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/facebook/widget/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/widget/v;->DEFAULT:Lcom/facebook/widget/v;

    .line 72
    new-instance v0, Lcom/facebook/widget/v;

    const-string v1, "DISPLAY_ALWAYS"

    invoke-direct {v0, v1, v3}, Lcom/facebook/widget/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/widget/v;->DISPLAY_ALWAYS:Lcom/facebook/widget/v;

    .line 77
    new-instance v0, Lcom/facebook/widget/v;

    const-string v1, "NEVER_DISPLAY"

    invoke-direct {v0, v1, v4}, Lcom/facebook/widget/v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/widget/v;->NEVER_DISPLAY:Lcom/facebook/widget/v;

    .line 62
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/widget/v;

    sget-object v1, Lcom/facebook/widget/v;->DEFAULT:Lcom/facebook/widget/v;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/widget/v;->DISPLAY_ALWAYS:Lcom/facebook/widget/v;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/widget/v;->NEVER_DISPLAY:Lcom/facebook/widget/v;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/widget/v;->$VALUES:[Lcom/facebook/widget/v;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/widget/v;
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/facebook/widget/v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/v;

    return-object v0
.end method

.method public static values()[Lcom/facebook/widget/v;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/facebook/widget/v;->$VALUES:[Lcom/facebook/widget/v;

    invoke-virtual {v0}, [Lcom/facebook/widget/v;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/widget/v;

    return-object v0
.end method
