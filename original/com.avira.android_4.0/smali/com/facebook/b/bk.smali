.class final enum Lcom/facebook/b/bk;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/widget/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/b/bk;",
        ">;",
        "Lcom/facebook/widget/d;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/b/bk;

.field public static final enum LIKE_DIALOG:Lcom/facebook/b/bk;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1289
    new-instance v0, Lcom/facebook/b/bk;

    const-string v1, "LIKE_DIALOG"

    invoke-direct {v0, v1}, Lcom/facebook/b/bk;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/b/bk;->LIKE_DIALOG:Lcom/facebook/b/bk;

    .line 1287
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/b/bk;

    const/4 v1, 0x0

    sget-object v2, Lcom/facebook/b/bk;->LIKE_DIALOG:Lcom/facebook/b/bk;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/b/bk;->$VALUES:[Lcom/facebook/b/bk;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 1293
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1294
    const v0, 0x133529d

    iput v0, p0, Lcom/facebook/b/bk;->a:I

    .line 1295
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/b/bk;
    .locals 1

    .prologue
    .line 1287
    const-class v0, Lcom/facebook/b/bk;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/b/bk;

    return-object v0
.end method

.method public static values()[Lcom/facebook/b/bk;
    .locals 1

    .prologue
    .line 1287
    sget-object v0, Lcom/facebook/b/bk;->$VALUES:[Lcom/facebook/b/bk;

    invoke-virtual {v0}, [Lcom/facebook/b/bk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/b/bk;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1298
    const-string v0, "com.facebook.platform.action.request.LIKE_DIALOG"

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 1302
    iget v0, p0, Lcom/facebook/b/bk;->a:I

    return v0
.end method
