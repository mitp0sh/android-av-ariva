.class public final enum Lcom/facebook/widget/ae;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/widget/ae;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/widget/ae;

.field public static final enum BLACK:Lcom/facebook/widget/ae;

.field public static final enum BLUE:Lcom/facebook/widget/ae;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/facebook/widget/ae;

    const-string v1, "BLUE"

    invoke-direct {v0, v1, v2}, Lcom/facebook/widget/ae;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/widget/ae;->BLUE:Lcom/facebook/widget/ae;

    .line 46
    new-instance v0, Lcom/facebook/widget/ae;

    const-string v1, "BLACK"

    invoke-direct {v0, v1, v3}, Lcom/facebook/widget/ae;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/widget/ae;->BLACK:Lcom/facebook/widget/ae;

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/widget/ae;

    sget-object v1, Lcom/facebook/widget/ae;->BLUE:Lcom/facebook/widget/ae;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/widget/ae;->BLACK:Lcom/facebook/widget/ae;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/widget/ae;->$VALUES:[Lcom/facebook/widget/ae;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/widget/ae;
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/facebook/widget/ae;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/ae;

    return-object v0
.end method

.method public static values()[Lcom/facebook/widget/ae;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/facebook/widget/ae;->$VALUES:[Lcom/facebook/widget/ae;

    invoke-virtual {v0}, [Lcom/facebook/widget/ae;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/widget/ae;

    return-object v0
.end method
