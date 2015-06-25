.class public final enum Lcom/facebook/widget/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/widget/j;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/widget/j;

.field public static final enum CENTER:Lcom/facebook/widget/j;

.field public static final enum LEFT:Lcom/facebook/widget/j;

.field public static final enum RIGHT:Lcom/facebook/widget/j;

.field static a:Lcom/facebook/widget/j;


# instance fields
.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    new-instance v0, Lcom/facebook/widget/j;

    const-string v1, "CENTER"

    const-string v2, "center"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/facebook/widget/j;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/widget/j;->CENTER:Lcom/facebook/widget/j;

    .line 113
    new-instance v0, Lcom/facebook/widget/j;

    const-string v1, "LEFT"

    const-string v2, "left"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/facebook/widget/j;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/widget/j;->LEFT:Lcom/facebook/widget/j;

    .line 120
    new-instance v0, Lcom/facebook/widget/j;

    const-string v1, "RIGHT"

    const-string v2, "right"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/facebook/widget/j;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/widget/j;->RIGHT:Lcom/facebook/widget/j;

    .line 102
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/widget/j;

    sget-object v1, Lcom/facebook/widget/j;->CENTER:Lcom/facebook/widget/j;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/widget/j;->LEFT:Lcom/facebook/widget/j;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/widget/j;->RIGHT:Lcom/facebook/widget/j;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/widget/j;->$VALUES:[Lcom/facebook/widget/j;

    .line 122
    sget-object v0, Lcom/facebook/widget/j;->CENTER:Lcom/facebook/widget/j;

    sput-object v0, Lcom/facebook/widget/j;->a:Lcom/facebook/widget/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 137
    iput-object p3, p0, Lcom/facebook/widget/j;->b:Ljava/lang/String;

    .line 138
    iput p4, p0, Lcom/facebook/widget/j;->c:I

    .line 139
    return-void
.end method

.method static synthetic a(Lcom/facebook/widget/j;)I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/facebook/widget/j;->c:I

    return v0
.end method

.method static a(I)Lcom/facebook/widget/j;
    .locals 5

    .prologue
    .line 125
    invoke-static {}, Lcom/facebook/widget/j;->values()[Lcom/facebook/widget/j;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 126
    iget v4, v0, Lcom/facebook/widget/j;->c:I

    if-ne v4, p0, :cond_0

    .line 131
    :goto_1
    return-object v0

    .line 125
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 131
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/widget/j;
    .locals 1

    .prologue
    .line 102
    const-class v0, Lcom/facebook/widget/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/j;

    return-object v0
.end method

.method public static values()[Lcom/facebook/widget/j;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/facebook/widget/j;->$VALUES:[Lcom/facebook/widget/j;

    invoke-virtual {v0}, [Lcom/facebook/widget/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/widget/j;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/facebook/widget/j;->b:Ljava/lang/String;

    return-object v0
.end method
