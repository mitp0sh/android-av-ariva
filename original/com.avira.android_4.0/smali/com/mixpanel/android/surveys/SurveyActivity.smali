.class public Lcom/mixpanel/android/surveys/SurveyActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final CURRENT_QUESTION_BUNDLE_KEY:Ljava/lang/String; = "com.mixpanel.android.surveys.SurveyActivity.CURRENT_QUESTION_BUNDLE_KEY"

.field private static final GRAY_30PERCENT:I

.field private static final LOGTAG:Ljava/lang/String; = "MixpanelAPI"

.field private static final SURVEY_STATE_BUNDLE_KEY:Ljava/lang/String; = "com.mixpanel.android.surveys.SurveyActivity.SURVEY_STATE_BUNDLE_KEY"


# instance fields
.field private a:Lcom/mixpanel/android/mpmetrics/r;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/mixpanel/android/surveys/CardCarouselLayout;

.field private f:Lcom/mixpanel/android/mpmetrics/SurveyState;

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x5a

    .line 238
    const/16 v0, 0xff

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/mixpanel/android/surveys/SurveyActivity;->GRAY_30PERCENT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->g:I

    .line 233
    const/4 v0, -0x1

    iput v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->h:I

    return-void
.end method

.method private a(I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 179
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->f:Lcom/mixpanel/android/mpmetrics/SurveyState;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/SurveyState;->a()Lcom/mixpanel/android/mpmetrics/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/ap;->d()Ljava/util/List;

    move-result-object v1

    .line 180
    if-eqz p1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 185
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 190
    :goto_1
    iget v2, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->g:I

    .line 191
    iput p1, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->g:I

    .line 192
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mixpanel/android/mpmetrics/ar;

    .line 193
    iget-object v3, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->f:Lcom/mixpanel/android/mpmetrics/SurveyState;

    invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/SurveyState;->e()Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap;

    move-result-object v3

    .line 194
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/ar;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    .line 196
    if-ge v2, p1, :cond_3

    .line 197
    :try_start_0
    iget-object v2, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->e:Lcom/mixpanel/android/surveys/CardCarouselLayout;

    sget-object v4, Lcom/mixpanel/android/surveys/d;->FORWARD:Lcom/mixpanel/android/surveys/d;

    invoke-virtual {v2, v0, v3, v4}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->a(Lcom/mixpanel/android/mpmetrics/ar;Ljava/lang/String;Lcom/mixpanel/android/surveys/d;)V
    :try_end_0
    .catch Lcom/mixpanel/android/surveys/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_5

    .line 209
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->d:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    :goto_3
    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->b:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 198
    :cond_3
    if-le v2, p1, :cond_4

    .line 199
    :try_start_1
    iget-object v2, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->e:Lcom/mixpanel/android/surveys/CardCarouselLayout;

    sget-object v4, Lcom/mixpanel/android/surveys/d;->BACKWARD:Lcom/mixpanel/android/surveys/d;

    invoke-virtual {v2, v0, v3, v4}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->a(Lcom/mixpanel/android/mpmetrics/ar;Ljava/lang/String;Lcom/mixpanel/android/surveys/d;)V
    :try_end_1
    .catch Lcom/mixpanel/android/surveys/j; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 204
    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->goToNextQuestion()V

    goto :goto_3

    .line 201
    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->e:Lcom/mixpanel/android/surveys/CardCarouselLayout;

    invoke-virtual {v2, v0, v3}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->a(Lcom/mixpanel/android/mpmetrics/ar;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/mixpanel/android/surveys/j; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 211
    :cond_5
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->d:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method static synthetic a(Lcom/mixpanel/android/surveys/SurveyActivity;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->goToNextQuestion()V

    return-void
.end method

.method static synthetic a(Lcom/mixpanel/android/surveys/SurveyActivity;Lcom/mixpanel/android/mpmetrics/ar;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->f:Lcom/mixpanel/android/mpmetrics/SurveyState;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/SurveyState;->e()Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/ar;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap;->a(Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method private completeSurvey()V
    .locals 0

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->finish()V

    .line 222
    return-void
.end method

.method private goToNextQuestion()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->f:Lcom/mixpanel/android/mpmetrics/SurveyState;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/SurveyState;->a()Lcom/mixpanel/android/mpmetrics/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/ap;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 171
    iget v1, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->g:I

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    .line 172
    iget v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->g:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/mixpanel/android/surveys/SurveyActivity;->a(I)V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->finish()V

    goto :goto_0
.end method

.method private goToPreviousQuestion()V
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->g:I

    if-lez v0, :cond_0

    .line 163
    iget v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->g:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/mixpanel/android/surveys/SurveyActivity;->a(I)V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public completeSurvey(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->finish()V

    .line 159
    return-void
.end method

.method public goToNextQuestion(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->goToNextQuestion()V

    .line 155
    return-void
.end method

.method public goToPreviousQuestion(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->goToPreviousQuestion()V

    .line 151
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->g:I

    if-lez v0, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->goToPreviousQuestion()V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const/4 v0, 0x0

    .line 39
    if-eqz p1, :cond_0

    .line 40
    const-string v0, "com.mixpanel.android.surveys.SurveyActivity.SURVEY_STATE_BUNDLE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mixpanel/android/mpmetrics/SurveyState;

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intentID"

    const v3, 0x7fffffff

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->h:I

    .line 43
    iget v1, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->h:I

    invoke-static {v0, v1}, Lcom/mixpanel/android/mpmetrics/SurveyState;->a(Lcom/mixpanel/android/mpmetrics/SurveyState;I)Lcom/mixpanel/android/mpmetrics/SurveyState;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->f:Lcom/mixpanel/android/mpmetrics/SurveyState;

    .line 44
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->f:Lcom/mixpanel/android/mpmetrics/SurveyState;

    if-nez v0, :cond_1

    .line 45
    const-string v0, "MixpanelAPI"

    const-string v1, "Survey intent received, but no survey was found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->finish()V

    .line 88
    :goto_0
    return-void

    .line 49
    :cond_1
    if-eqz p1, :cond_2

    .line 50
    const-string v0, "com.mixpanel.android.surveys.SurveyActivity.CURRENT_QUESTION_BUNDLE_KEY"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->g:I

    .line 54
    :cond_2
    sget v0, Lcom/mixpanel/android/c;->com_mixpanel_android_activity_survey:I

    invoke-virtual {p0, v0}, Lcom/mixpanel/android/surveys/SurveyActivity;->setContentView(I)V

    .line 55
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->f:Lcom/mixpanel/android/mpmetrics/SurveyState;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/SurveyState;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 56
    if-nez v0, :cond_3

    .line 57
    sget v0, Lcom/mixpanel/android/b;->com_mixpanel_android_activity_survey_id:I

    invoke-virtual {p0, v0}, Lcom/mixpanel/android/surveys/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 58
    sget v1, Lcom/mixpanel/android/surveys/SurveyActivity;->GRAY_30PERCENT:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 62
    :goto_1
    sget v0, Lcom/mixpanel/android/b;->com_mixpanel_android_button_previous:I

    invoke-virtual {p0, v0}, Lcom/mixpanel/android/surveys/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->b:Landroid/view/View;

    .line 63
    sget v0, Lcom/mixpanel/android/b;->com_mixpanel_android_button_next:I

    invoke-virtual {p0, v0}, Lcom/mixpanel/android/surveys/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->c:Landroid/view/View;

    .line 64
    sget v0, Lcom/mixpanel/android/b;->com_mixpanel_android_progress_text:I

    invoke-virtual {p0, v0}, Lcom/mixpanel/android/surveys/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->d:Landroid/widget/TextView;

    .line 65
    sget v0, Lcom/mixpanel/android/b;->com_mixpanel_android_question_card_holder:I

    invoke-virtual {p0, v0}, Lcom/mixpanel/android/surveys/SurveyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mixpanel/android/surveys/CardCarouselLayout;

    iput-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->e:Lcom/mixpanel/android/surveys/CardCarouselLayout;

    .line 66
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->e:Lcom/mixpanel/android/surveys/CardCarouselLayout;

    new-instance v1, Lcom/mixpanel/android/surveys/k;

    invoke-direct {v1, p0}, Lcom/mixpanel/android/surveys/k;-><init>(Lcom/mixpanel/android/surveys/SurveyActivity;)V

    invoke-virtual {v0, v1}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->a(Lcom/mixpanel/android/surveys/e;)V

    .line 74
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->f:Lcom/mixpanel/android/mpmetrics/SurveyState;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/SurveyState;->a()Lcom/mixpanel/android/mpmetrics/ap;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->f:Lcom/mixpanel/android/mpmetrics/SurveyState;

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/SurveyState;->b()Ljava/lang/String;

    move-result-object v1

    .line 76
    if-nez v1, :cond_4

    .line 77
    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->finish()V

    goto :goto_0

    .line 60
    :cond_3
    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/mixpanel/android/surveys/SurveyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 82
    :cond_4
    iget-object v2, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->f:Lcom/mixpanel/android/mpmetrics/SurveyState;

    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/SurveyState;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mixpanel/android/mpmetrics/r;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/r;

    move-result-object v2

    iput-object v2, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->a:Lcom/mixpanel/android/mpmetrics/r;

    .line 83
    iget-object v2, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->a:Lcom/mixpanel/android/mpmetrics/r;

    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/r;->b()Lcom/mixpanel/android/mpmetrics/v;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/mixpanel/android/mpmetrics/v;->b(Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/v;

    move-result-object v1

    .line 84
    const-string v2, "$surveys"

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/ap;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/mixpanel/android/mpmetrics/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    const-string v2, "$collections"

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/ap;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/mixpanel/android/mpmetrics/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->a:Lcom/mixpanel/android/mpmetrics/r;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/r;->a()V

    .line 87
    iget v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->g:I

    invoke-direct {p0, v0}, Lcom/mixpanel/android/surveys/SurveyActivity;->a(I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->a:Lcom/mixpanel/android/mpmetrics/r;

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->f:Lcom/mixpanel/android/mpmetrics/SurveyState;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->f:Lcom/mixpanel/android/mpmetrics/SurveyState;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/SurveyState;->a()Lcom/mixpanel/android/mpmetrics/ap;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/ap;->d()Ljava/util/List;

    move-result-object v0

    .line 99
    iget-object v2, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->f:Lcom/mixpanel/android/mpmetrics/SurveyState;

    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/SurveyState;->b()Ljava/lang/String;

    move-result-object v2

    .line 100
    iget-object v3, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->a:Lcom/mixpanel/android/mpmetrics/r;

    invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/r;->b()Lcom/mixpanel/android/mpmetrics/v;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/mixpanel/android/mpmetrics/v;->b(Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/v;

    move-result-object v2

    .line 101
    const-string v3, "$responses"

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/ap;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/mixpanel/android/mpmetrics/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    iget-object v3, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->f:Lcom/mixpanel/android/mpmetrics/SurveyState;

    invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/SurveyState;->e()Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap;

    move-result-object v3

    .line 104
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mixpanel/android/mpmetrics/ar;

    .line 105
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/ar;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/mixpanel/android/mpmetrics/SurveyState$AnswerMap;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    .line 106
    if-eqz v5, :cond_0

    .line 108
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 109
    const-string v7, "$survey_id"

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/ap;->b()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 110
    const-string v7, "$collection_id"

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/ap;->c()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 111
    const-string v7, "$question_id"

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/ar;->a()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 112
    const-string v7, "$question_type"

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/ar;->d()Lcom/mixpanel/android/mpmetrics/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/as;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v0, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 115
    const-string v7, "UTC"

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 116
    const-string v7, "$time"

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    const-string v0, "$value"

    invoke-virtual {v6, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string v0, "$answers"

    invoke-interface {v2, v0, v6}, Lcom/mixpanel/android/mpmetrics/v;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const-string v5, "MixpanelAPI"

    const-string v6, "Couldn\'t record user\'s answer."

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->a:Lcom/mixpanel/android/mpmetrics/r;

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/r;->a()V

    .line 129
    :cond_2
    iget v0, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->h:I

    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/SurveyState;->a(I)V

    .line 130
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 131
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 136
    const-string v0, "com.mixpanel.android.surveys.SurveyActivity.CURRENT_QUESTION_BUNDLE_KEY"

    iget v1, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->g:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    const-string v0, "com.mixpanel.android.surveys.SurveyActivity.SURVEY_STATE_BUNDLE_KEY"

    iget-object v1, p0, Lcom/mixpanel/android/surveys/SurveyActivity;->f:Lcom/mixpanel/android/mpmetrics/SurveyState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 138
    return-void
.end method
