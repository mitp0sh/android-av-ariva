.class public final Lcom/google/c/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private a:Z

.field private b:I

.field private c:Z

.field private d:J

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Lcom/google/c/a/m;

.field private m:Z

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/google/c/a/l;->b:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/c/a/l;->d:J

    const-string v0, ""

    iput-object v0, p0, Lcom/google/c/a/l;->f:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/google/c/a/l;->h:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/c/a/l;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/c/a/l;->n:Ljava/lang/String;

    sget-object v0, Lcom/google/c/a/m;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/google/c/a/m;

    iput-object v0, p0, Lcom/google/c/a/l;->l:Lcom/google/c/a/m;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/c/a/l;->b:I

    return v0
.end method

.method public final a(I)Lcom/google/c/a/l;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/c/a/l;->a:Z

    iput p1, p0, Lcom/google/c/a/l;->b:I

    return-object p0
.end method

.method public final a(J)Lcom/google/c/a/l;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/c/a/l;->c:Z

    iput-wide p1, p0, Lcom/google/c/a/l;->d:J

    return-object p0
.end method

.method public final a(Lcom/google/c/a/l;)Lcom/google/c/a/l;
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p1, Lcom/google/c/a/l;->a:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/google/c/a/l;->b:I

    invoke-virtual {p0, v0}, Lcom/google/c/a/l;->a(I)Lcom/google/c/a/l;

    :cond_0
    iget-boolean v0, p1, Lcom/google/c/a/l;->c:Z

    if-eqz v0, :cond_1

    iget-wide v0, p1, Lcom/google/c/a/l;->d:J

    invoke-virtual {p0, v0, v1}, Lcom/google/c/a/l;->a(J)Lcom/google/c/a/l;

    :cond_1
    iget-boolean v0, p1, Lcom/google/c/a/l;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/c/a/l;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/c/a/l;->a(Ljava/lang/String;)Lcom/google/c/a/l;

    :cond_2
    iget-boolean v0, p1, Lcom/google/c/a/l;->g:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/google/c/a/l;->h:Z

    invoke-virtual {p0, v0}, Lcom/google/c/a/l;->a(Z)Lcom/google/c/a/l;

    :cond_3
    iget-boolean v0, p1, Lcom/google/c/a/l;->i:Z

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/google/c/a/l;->j:Ljava/lang/String;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_4
    iput-boolean v2, p0, Lcom/google/c/a/l;->i:Z

    iput-object v0, p0, Lcom/google/c/a/l;->j:Ljava/lang/String;

    :cond_5
    iget-boolean v0, p1, Lcom/google/c/a/l;->k:Z

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/google/c/a/l;->l:Lcom/google/c/a/m;

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_6
    iput-boolean v2, p0, Lcom/google/c/a/l;->k:Z

    iput-object v0, p0, Lcom/google/c/a/l;->l:Lcom/google/c/a/m;

    :cond_7
    iget-boolean v0, p1, Lcom/google/c/a/l;->m:Z

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/google/c/a/l;->n:Ljava/lang/String;

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_8
    iput-boolean v2, p0, Lcom/google/c/a/l;->m:Z

    iput-object v0, p0, Lcom/google/c/a/l;->n:Ljava/lang/String;

    :cond_9
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/c/a/l;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/c/a/l;->e:Z

    iput-object p1, p0, Lcom/google/c/a/l;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final a(Z)Lcom/google/c/a/l;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/c/a/l;->g:Z

    iput-boolean p1, p0, Lcom/google/c/a/l;->h:Z

    return-object p0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/google/c/a/l;->d:J

    return-wide v0
.end method

.method public final b(Lcom/google/c/a/l;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p0, p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/google/c/a/l;->b:I

    iget v3, p1, Lcom/google/c/a/l;->b:I

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lcom/google/c/a/l;->d:J

    iget-wide v4, p1, Lcom/google/c/a/l;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/c/a/l;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/c/a/l;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/c/a/l;->h:Z

    iget-boolean v3, p1, Lcom/google/c/a/l;->h:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/c/a/l;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/c/a/l;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/c/a/l;->l:Lcom/google/c/a/m;

    iget-object v3, p1, Lcom/google/c/a/l;->l:Lcom/google/c/a/m;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/c/a/l;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/c/a/l;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/c/a/l;->m:Z

    iget-boolean v3, p1, Lcom/google/c/a/l;->m:Z

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/c/a/l;->e:Z

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/c/a/l;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lcom/google/c/a/l;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/c/a/l;->e:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/c/a/l;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/google/c/a/l;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/c/a/l;

    invoke-virtual {p0, p1}, Lcom/google/c/a/l;->b(Lcom/google/c/a/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Lcom/google/c/a/l;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/c/a/l;->i:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/c/a/l;->j:Ljava/lang/String;

    return-object p0
.end method

.method public final g()Lcom/google/c/a/l;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/c/a/l;->k:Z

    sget-object v0, Lcom/google/c/a/m;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/google/c/a/m;

    iput-object v0, p0, Lcom/google/c/a/l;->l:Lcom/google/c/a/m;

    return-object p0
.end method

.method public final h()Lcom/google/c/a/l;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/c/a/l;->m:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/c/a/l;->n:Ljava/lang/String;

    return-object p0
.end method

.method public final hashCode()I
    .locals 6

    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    iget v0, p0, Lcom/google/c/a/l;->b:I

    add-int/lit16 v0, v0, 0x87d

    mul-int/lit8 v0, v0, 0x35

    iget-wide v4, p0, Lcom/google/c/a/l;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x35

    iget-object v3, p0, Lcom/google/c/a/l;->f:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x35

    iget-boolean v0, p0, Lcom/google/c/a/l;->h:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x35

    iget-object v3, p0, Lcom/google/c/a/l;->j:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x35

    iget-object v3, p0, Lcom/google/c/a/l;->l:Lcom/google/c/a/m;

    invoke-virtual {v3}, Lcom/google/c/a/m;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x35

    iget-object v3, p0, Lcom/google/c/a/l;->n:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x35

    iget-boolean v3, p0, Lcom/google/c/a/l;->m:Z

    if-eqz v3, :cond_1

    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Country Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/c/a/l;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " National Number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/c/a/l;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/c/a/l;->g:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/c/a/l;->h:Z

    if-eqz v1, :cond_0

    const-string v1, " Leading Zero: true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v1, p0, Lcom/google/c/a/l;->e:Z

    if-eqz v1, :cond_1

    const-string v1, " Extension: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/c/a/l;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v1, p0, Lcom/google/c/a/l;->k:Z

    if-eqz v1, :cond_2

    const-string v1, " Country Code Source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/c/a/l;->l:Lcom/google/c/a/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    iget-boolean v1, p0, Lcom/google/c/a/l;->m:Z

    if-eqz v1, :cond_3

    const-string v1, " Preferred Domestic Carrier Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/c/a/l;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
