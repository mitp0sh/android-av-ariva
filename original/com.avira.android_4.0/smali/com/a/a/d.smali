.class public final Lcom/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/a/a/k;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/a/a/j",
            "<**>;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/TimeUnit;

.field private d:Z

.field private e:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    sget-object v0, Lcom/a/a/k;->CREATED:Lcom/a/a/k;

    iput-object v0, p0, Lcom/a/a/d;->a:Lcom/a/a/k;

    .line 98
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/a/a/d;->c:Ljava/util/concurrent/TimeUnit;

    .line 100
    const-wide/16 v0, 0x3c

    iput-wide v0, p0, Lcom/a/a/d;->e:J

    .line 106
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/a/a/d;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/a/a/d;)Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/a/a/d;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/a/a/d;)Ljava/util/List;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/a/a/d;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/a/a/d;)Lcom/a/a/k;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/a/a/d;->a:Lcom/a/a/k;

    return-object v0
.end method

.method static synthetic d(Lcom/a/a/d;)J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/a/a/d;->e:J

    return-wide v0
.end method

.method static synthetic e(Lcom/a/a/d;)Ljava/util/concurrent/TimeUnit;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/a/a/d;->c:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/a/a/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/a/a/a",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Lcom/a/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/a/a/a;-><init>(Lcom/a/a/d;B)V

    return-object v0
.end method

.method public final a(Ljava/util/concurrent/TimeUnit;)Lcom/a/a/d;
    .locals 2

    .prologue
    .line 125
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/a/a/d;->e:J

    .line 126
    iput-object p1, p0, Lcom/a/a/d;->c:Ljava/util/concurrent/TimeUnit;

    .line 127
    return-object p0
.end method
