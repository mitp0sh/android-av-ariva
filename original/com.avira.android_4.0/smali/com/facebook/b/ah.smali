.class public final Lcom/facebook/b/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final HEIGHT_PARAM:Ljava/lang/String; = "height"

.field private static final MIGRATION_PARAM:Ljava/lang/String; = "migration_overrides"

.field private static final MIGRATION_VALUE:Ljava/lang/String; = "{october_2012:true}"

.field private static final PROFILEPIC_URL_FORMAT:Ljava/lang/String; = "https://graph.facebook.com/%s/picture"

.field public static final UNSPECIFIED_DIMENSION:I = 0x0

.field private static final WIDTH_PARAM:Ljava/lang/String; = "width"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/net/URI;

.field private c:Lcom/facebook/b/aj;

.field private d:Z

.field private e:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/facebook/b/ai;)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {p1}, Lcom/facebook/b/ai;->a(Lcom/facebook/b/ai;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/b/ah;->a:Landroid/content/Context;

    .line 83
    invoke-static {p1}, Lcom/facebook/b/ai;->b(Lcom/facebook/b/ai;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/b/ah;->b:Ljava/net/URI;

    .line 84
    invoke-static {p1}, Lcom/facebook/b/ai;->c(Lcom/facebook/b/ai;)Lcom/facebook/b/aj;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/b/ah;->c:Lcom/facebook/b/aj;

    .line 85
    invoke-static {p1}, Lcom/facebook/b/ai;->d(Lcom/facebook/b/ai;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/b/ah;->d:Z

    .line 86
    invoke-static {p1}, Lcom/facebook/b/ai;->e(Lcom/facebook/b/ai;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/facebook/b/ah;->e:Ljava/lang/Object;

    .line 87
    return-void

    .line 86
    :cond_0
    invoke-static {p1}, Lcom/facebook/b/ai;->e(Lcom/facebook/b/ai;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/facebook/b/ai;B)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/facebook/b/ah;-><init>(Lcom/facebook/b/ai;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/b/ah;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final b()Ljava/net/URI;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/facebook/b/ah;->b:Ljava/net/URI;

    return-object v0
.end method

.method public final c()Lcom/facebook/b/aj;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/b/ah;->c:Lcom/facebook/b/aj;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/facebook/b/ah;->d:Z

    return v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/facebook/b/ah;->e:Ljava/lang/Object;

    return-object v0
.end method
