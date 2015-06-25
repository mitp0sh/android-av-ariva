.class public final Lcom/avira/android/blacklist/model/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:J

.field private final d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/avira/android/blacklist/model/j;->a:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/avira/android/blacklist/model/j;->b:Ljava/lang/String;

    .line 40
    iput-wide p3, p0, Lcom/avira/android/blacklist/model/j;->c:J

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/avira/android/blacklist/model/j;->d:I

    .line 42
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/avira/android/blacklist/model/j;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/avira/android/blacklist/model/j;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/avira/android/blacklist/model/j;->a:Ljava/lang/String;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/avira/android/blacklist/model/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(J)V
    .locals 1

    .prologue
    .line 106
    iput-wide p1, p0, Lcom/avira/android/blacklist/model/j;->c:J

    .line 107
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/avira/android/blacklist/model/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 4

    .prologue
    .line 75
    invoke-static {}, Lcom/avira/android/utilities/g;->a()Lcom/avira/android/utilities/g;

    move-result-object v0

    iget-wide v2, p0, Lcom/avira/android/blacklist/model/j;->c:J

    invoke-virtual {v0, v2, v3}, Lcom/avira/android/utilities/g;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 4

    .prologue
    .line 85
    invoke-static {}, Lcom/avira/android/utilities/g;->a()Lcom/avira/android/utilities/g;

    move-result-object v0

    iget-wide v2, p0, Lcom/avira/android/blacklist/model/j;->c:J

    invoke-virtual {v0, v2, v3}, Lcom/avira/android/utilities/g;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/avira/android/blacklist/model/j;->c:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 122
    const-string v0, "%s:%s:%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/avira/android/blacklist/model/j;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/avira/android/blacklist/model/j;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/avira/android/blacklist/model/j;->c:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
