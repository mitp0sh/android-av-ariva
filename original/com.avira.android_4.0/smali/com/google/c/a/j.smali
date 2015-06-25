.class public final Lcom/google/c/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/c/a/j;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/c/a/j;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/c/a/j;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/c/a/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/c/a/j;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final readExternal(Ljava/io/ObjectInput;)V
    .locals 2

    const/4 v1, 0x1

    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-boolean v1, p0, Lcom/google/c/a/j;->a:Z

    iput-object v0, p0, Lcom/google/c/a/j;->b:Ljava/lang/String;

    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-boolean v1, p0, Lcom/google/c/a/j;->c:Z

    iput-object v0, p0, Lcom/google/c/a/j;->d:Ljava/lang/String;

    :cond_1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-boolean v1, p0, Lcom/google/c/a/j;->e:Z

    iput-object v0, p0, Lcom/google/c/a/j;->f:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public final writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/c/a/j;->a:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/google/c/a/j;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/c/a/j;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/c/a/j;->c:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/google/c/a/j;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/c/a/j;->d:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/google/c/a/j;->e:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/google/c/a/j;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/c/a/j;->f:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
