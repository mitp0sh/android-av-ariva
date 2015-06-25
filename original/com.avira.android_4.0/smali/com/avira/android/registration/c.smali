.class final Lcom/avira/android/registration/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lcom/avira/android/registration/CreateAccountActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/registration/CreateAccountActivity;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/avira/android/registration/c;->a:Lcom/avira/android/registration/CreateAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/avira/android/registration/c;->a:Lcom/avira/android/registration/CreateAccountActivity;

    invoke-static {v0}, Lcom/avira/android/registration/CreateAccountActivity;->a(Lcom/avira/android/registration/CreateAccountActivity;)Lcom/avira/android/registration/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/registration/d;->o()V

    .line 65
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
