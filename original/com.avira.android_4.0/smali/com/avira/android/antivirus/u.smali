.class public final Lcom/avira/android/antivirus/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Lcom/avira/android/antivirus/u;

.field private g:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/avira/android/antivirus/u;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 54
    iput p1, p0, Lcom/avira/android/antivirus/u;->a:I

    .line 55
    return-void
.end method

.method public final a(Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/avira/android/antivirus/u;->g:Landroid/widget/CheckBox;

    .line 115
    return-void
.end method

.method public final a(Lcom/avira/android/antivirus/u;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/avira/android/antivirus/u;->f:Lcom/avira/android/antivirus/u;

    .line 105
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/avira/android/antivirus/u;->b:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/avira/android/antivirus/u;->c:Z

    .line 75
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/avira/android/antivirus/u;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/avira/android/antivirus/u;->d:Z

    .line 85
    return-void
.end method

.method public final c(Z)V
    .locals 0

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/avira/android/antivirus/u;->e:Z

    .line 95
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/avira/android/antivirus/u;->c:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/avira/android/antivirus/u;->d:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/avira/android/antivirus/u;->e:Z

    return v0
.end method

.method public final f()Lcom/avira/android/antivirus/u;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/avira/android/antivirus/u;->f:Lcom/avira/android/antivirus/u;

    return-object v0
.end method

.method public final g()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/avira/android/antivirus/u;->g:Landroid/widget/CheckBox;

    return-object v0
.end method
