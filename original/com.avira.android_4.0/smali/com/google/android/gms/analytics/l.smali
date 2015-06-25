.class final Lcom/google/android/gms/analytics/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/d;


# instance fields
.field final synthetic a:Lcom/google/android/gms/analytics/k;

.field private b:Z

.field private c:Z

.field private d:I

.field private e:J

.field private f:Z

.field private g:Lcom/google/android/gms/analytics/ao;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/k;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/google/android/gms/analytics/l;->a:Lcom/google/android/gms/analytics/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/google/android/gms/analytics/l;->b:Z

    iput-boolean v2, p0, Lcom/google/android/gms/analytics/l;->c:Z

    iput v2, p0, Lcom/google/android/gms/analytics/l;->d:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/analytics/l;->e:J

    iput-boolean v2, p0, Lcom/google/android/gms/analytics/l;->f:Z

    new-instance v0, Lcom/google/android/gms/analytics/m;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/analytics/m;-><init>(Lcom/google/android/gms/analytics/l;Lcom/google/android/gms/analytics/k;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/l;->g:Lcom/google/android/gms/analytics/ao;

    return-void
.end method

.method private d()V
    .locals 6

    invoke-static {}, Lcom/google/android/gms/analytics/c;->a()Lcom/google/android/gms/analytics/c;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "GoogleAnalytics isn\'t initialized for the Tracker!"

    invoke-static {v0}, Lcom/google/android/gms/analytics/p;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/analytics/l;->e:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/analytics/l;->c:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/analytics/l;->a:Lcom/google/android/gms/analytics/k;

    invoke-static {v1}, Lcom/google/android/gms/analytics/k;->a(Lcom/google/android/gms/analytics/k;)Lcom/google/android/gms/analytics/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/c;->a(Lcom/google/android/gms/analytics/d;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/analytics/l;->a:Lcom/google/android/gms/analytics/k;

    invoke-static {v1}, Lcom/google/android/gms/analytics/k;->a(Lcom/google/android/gms/analytics/k;)Lcom/google/android/gms/analytics/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/c;->b(Lcom/google/android/gms/analytics/d;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/analytics/l;->e:J

    return-wide v0
.end method

.method public final a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/google/android/gms/analytics/l;->e:J

    invoke-direct {p0}, Lcom/google/android/gms/analytics/l;->d()V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/l;->c:Z

    invoke-direct {p0}, Lcom/google/android/gms/analytics/l;->d()V

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/l;->c:Z

    return v0
.end method

.method public final c()Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/l;->f:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/l;->f:Z

    return v0
.end method
