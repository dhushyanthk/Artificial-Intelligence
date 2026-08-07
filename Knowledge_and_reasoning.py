{
  "nbformat": 4,
  "nbformat_minor": 0,
  "metadata": {
    "colab": {
      "provenance": [],
      "authorship_tag": "ABX9TyMJ756OjlqGOpSbnP37J5/1",
      "include_colab_link": true
    },
    "kernelspec": {
      "name": "python3",
      "display_name": "Python 3"
    },
    "language_info": {
      "name": "python"
    }
  },
  "cells": [
    {
      "cell_type": "markdown",
      "metadata": {
        "id": "view-in-github",
        "colab_type": "text"
      },
      "source": [
        "<a href=\"https://colab.research.google.com/github/dhushyanthk/Artificial-Intelligence/blob/main/Knowledge_and_reasoning.py\" target=\"_parent\"><img src=\"https://colab.research.google.com/assets/colab-badge.svg\" alt=\"Open In Colab\"/></a>"
      ]
    },
    {
      "cell_type": "code",
      "source": [
        "# Knowledge Base\n",
        "attendance = 80\n",
        "marks = 65\n",
        "\n",
        "# Reasoning\n",
        "if attendance >= 75 and marks >= 50:\n",
        "    print(\"Knowledge: Attendance and marks satisfy the rules.\")\n",
        "    print(\"Reasoning: Student is eligible for the exam.\")\n",
        "else:\n",
        "    print(\"Knowledge: Requirements are not met.\")\n",
        "    print(\"Reasoning: Student is not eligible.\")"
      ],
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/"
        },
        "id": "7G7NzodMLzpI",
        "outputId": "eeb360a0-0542-4f66-c355-97830df6d8d7"
      },
      "execution_count": null,
      "outputs": [
        {
          "output_type": "stream",
          "name": "stdout",
          "text": [
            "Knowledge: Attendance and marks satisfy the rules.\n",
            "Reasoning: Student is eligible for the exam.\n"
          ]
        }
      ]
    },
    {
      "cell_type": "code",
      "execution_count": null,
      "metadata": {
        "colab": {
          "base_uri": "https://localhost:8080/"
        },
        "id": "cSnBtSVdJnbO",
        "outputId": "237a6167-d1df-47f5-c373-c81295d365ee"
      },
      "outputs": [
        {
          "output_type": "stream",
          "name": "stdout",
          "text": [
            "Knowledge: It is rainy.\n",
            "Reasoning: Carry an umbrella.\n"
          ]
        }
      ],
      "source": [
        "# Knowledge Base\n",
        "weather = \"rainy\"\n",
        "\n",
        "# Reasoning\n",
        "if weather == \"rainy\":\n",
        "    print(\"Knowledge: It is rainy.\")\n",
        "    print(\"Reasoning: Carry an umbrella.\")\n",
        "else:\n",
        "    print(\"Knowledge: Weather is clear.\")\n",
        "    print(\"Reasoning: No umbrella needed.\")"
      ]
    }
  ]
}