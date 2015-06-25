.class public Lcom/avira/applock/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final a:J

.field private b:J

.field private c:J

.field private d:Z

.field private e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/avira/applock/b/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/applock/b/d;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide v0, p0, Lcom/avira/applock/b/d;->a:J

    .line 23
    iput-wide v0, p0, Lcom/avira/applock/b/d;->b:J

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avira/applock/b/d;->d:Z

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/avira/applock/b/d;->e:Ljava/util/HashSet;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/avira/applock/b/d;->f:Ljava/util/HashSet;

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/avira/applock/b/d;->g:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/avira/applock/b/d;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 42
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/avira/applock/b/d;->b:J

    sub-long/2addr v0, v2

    .line 43
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/avira/applock/b/d;->c:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 46
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/avira/applock/b/d;->d:Z

    .line 48
    :cond_1
    sget-object v2, Lcom/avira/applock/b/d;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Application idlePeriod "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    :cond_2
    iget-boolean v0, p0, Lcom/avira/applock/b/d;->d:Z

    return v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/avira/applock/b/d;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avira/applock/b/d;->d:Z

    .line 60
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/avira/applock/b/d;->b:J

    .line 61
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/avira/applock/b/d;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avira/applock/b/d;->d:Z

    .line 69
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/avira/applock/b/d;->b:J

    .line 70
    return-void
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 133
    .line 136
    iget-object v0, p0, Lcom/avira/applock/b/d;->f:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/avira/applock/b/d;->f:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 139
    if-eqz v0, :cond_1

    .line 151
    :goto_0
    return v1

    :cond_0
    move v0, v1

    .line 146
    :cond_1
    iget-object v2, p0, Lcom/avira/applock/b/d;->g:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 148
    iget-object v0, p0, Lcom/avira/applock/b/d;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    move v1, v0

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/avira/applock/b/d;->d:Z

    if-eqz v0, :cond_0

    .line 84
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/avira/applock/b/d;->c:J

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avira/applock/b/d;->b:J

    .line 87
    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/avira/applock/b/d;->f:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 186
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 94
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/avira/applock/b/d;->b:J

    .line 95
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/avira/applock/b/d;->g:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 198
    return-void
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/avira/applock/b/d;->f:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/avira/applock/b/d;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
