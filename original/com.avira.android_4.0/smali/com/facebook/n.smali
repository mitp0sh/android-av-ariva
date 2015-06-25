.class final Lcom/facebook/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lcom/facebook/m;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 849
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/n;->a:I

    .line 850
    sget-object v0, Lcom/facebook/m;->SUCCESS:Lcom/facebook/m;

    iput-object v0, p0, Lcom/facebook/n;->b:Lcom/facebook/m;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 848
    invoke-direct {p0}, Lcom/facebook/n;-><init>()V

    return-void
.end method
