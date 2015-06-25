.class public final Lcom/avira/android/blacklist/d/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/blacklist/d/h;

.field private b:Z

.field private c:Z

.field private d:Lcom/avira/android/blacklist/model/BLContact;


# direct methods
.method public constructor <init>(Lcom/avira/android/blacklist/d/h;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/avira/android/blacklist/d/k;->a:Lcom/avira/android/blacklist/d/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/avira/android/blacklist/d/k;)V
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avira/android/blacklist/d/k;->c:Z

    return-void
.end method

.method static synthetic b(Lcom/avira/android/blacklist/d/k;)V
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avira/android/blacklist/d/k;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/avira/android/blacklist/model/BLContact;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/avira/android/blacklist/d/k;->d:Lcom/avira/android/blacklist/model/BLContact;

    .line 365
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/avira/android/blacklist/d/k;->b:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/avira/android/blacklist/d/k;->c:Z

    return v0
.end method

.method public final c()Lcom/avira/android/blacklist/model/BLContact;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/avira/android/blacklist/d/k;->d:Lcom/avira/android/blacklist/model/BLContact;

    return-object v0
.end method
