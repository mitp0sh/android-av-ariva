.class public final enum Lcom/facebook/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/k;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/k;

.field public static final enum AUTO:Lcom/facebook/k;

.field public static final enum EXPLICIT_ONLY:Lcom/facebook/k;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 138
    new-instance v0, Lcom/facebook/k;

    const-string v1, "AUTO"

    invoke-direct {v0, v1, v2}, Lcom/facebook/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/k;->AUTO:Lcom/facebook/k;

    .line 143
    new-instance v0, Lcom/facebook/k;

    const-string v1, "EXPLICIT_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/facebook/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/k;->EXPLICIT_ONLY:Lcom/facebook/k;

    .line 133
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/k;

    sget-object v1, Lcom/facebook/k;->AUTO:Lcom/facebook/k;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/k;->EXPLICIT_ONLY:Lcom/facebook/k;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/k;->$VALUES:[Lcom/facebook/k;

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
    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/k;
    .locals 1

    .prologue
    .line 133
    const-class v0, Lcom/facebook/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/k;

    return-object v0
.end method

.method public static values()[Lcom/facebook/k;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/facebook/k;->$VALUES:[Lcom/facebook/k;

    invoke-virtual {v0}, [Lcom/facebook/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/k;

    return-object v0
.end method
