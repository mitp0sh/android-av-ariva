.class final Lcom/facebook/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient a:Lcom/facebook/ah;

.field private final b:Lcom/facebook/cr;

.field private final c:I

.field private d:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/facebook/cq;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private j:Z


# direct methods
.method constructor <init>(Lcom/facebook/cr;IZLjava/util/List;Lcom/facebook/cq;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ah;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/cr;",
            "IZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/cq;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/ah;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 952
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 942
    iput-boolean v0, p0, Lcom/facebook/y;->d:Z

    .line 948
    iput-boolean v0, p0, Lcom/facebook/y;->j:Z

    .line 953
    iput-object p1, p0, Lcom/facebook/y;->b:Lcom/facebook/cr;

    .line 954
    iput p2, p0, Lcom/facebook/y;->c:I

    .line 955
    iput-boolean p3, p0, Lcom/facebook/y;->d:Z

    .line 956
    iput-object p4, p0, Lcom/facebook/y;->e:Ljava/util/List;

    .line 957
    iput-object p5, p0, Lcom/facebook/y;->f:Lcom/facebook/cq;

    .line 958
    iput-object p6, p0, Lcom/facebook/y;->g:Ljava/lang/String;

    .line 959
    iput-object p7, p0, Lcom/facebook/y;->h:Ljava/lang/String;

    .line 960
    iput-object p8, p0, Lcom/facebook/y;->a:Lcom/facebook/ah;

    .line 961
    iput-object p9, p0, Lcom/facebook/y;->i:Ljava/lang/String;

    .line 962
    return-void
.end method


# virtual methods
.method final a()Lcom/facebook/ah;
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/facebook/y;->a:Lcom/facebook/ah;

    return-object v0
.end method

.method final a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 973
    iput-object p1, p0, Lcom/facebook/y;->e:Ljava/util/List;

    .line 974
    return-void
.end method

.method final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 969
    iget-object v0, p0, Lcom/facebook/y;->e:Ljava/util/List;

    return-object v0
.end method

.method final c()Lcom/facebook/cr;
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lcom/facebook/y;->b:Lcom/facebook/cr;

    return-object v0
.end method

.method final d()I
    .locals 1

    .prologue
    .line 981
    iget v0, p0, Lcom/facebook/y;->c:I

    return v0
.end method

.method final e()Lcom/facebook/cq;
    .locals 1

    .prologue
    .line 985
    iget-object v0, p0, Lcom/facebook/y;->f:Lcom/facebook/cq;

    return-object v0
.end method

.method final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/facebook/y;->g:Ljava/lang/String;

    return-object v0
.end method

.method final g()Z
    .locals 1

    .prologue
    .line 993
    iget-boolean v0, p0, Lcom/facebook/y;->d:Z

    return v0
.end method

.method final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/facebook/y;->h:Ljava/lang/String;

    return-object v0
.end method

.method final i()Z
    .locals 1

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/facebook/y;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/y;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/facebook/y;->i:Ljava/lang/String;

    return-object v0
.end method

.method final k()Z
    .locals 1

    .prologue
    .line 1013
    iget-boolean v0, p0, Lcom/facebook/y;->j:Z

    return v0
.end method
