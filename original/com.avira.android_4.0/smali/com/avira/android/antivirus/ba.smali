.class final Lcom/avira/android/antivirus/ba;
.super Lcom/avira/android/utilities/j;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/antivirus/az;


# direct methods
.method constructor <init>(Lcom/avira/android/antivirus/az;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/avira/android/antivirus/ba;->a:Lcom/avira/android/antivirus/az;

    invoke-direct {p0}, Lcom/avira/android/utilities/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/avira/android/antivirus/ba;->a:Lcom/avira/android/antivirus/az;

    invoke-virtual {v0, p1}, Lcom/avira/android/antivirus/az;->onClick(Landroid/view/View;)V

    .line 97
    return-void
.end method
